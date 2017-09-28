public with sharing class RelatedListComponent {

    public Id recordId {get; set;}
    public String objectNameAttribute {get; set;}
    public String fieldsAttribute {get; set;}
    public String[] getFieldsArray() {
        return this.fieldsAttribute.split(',');
    }

    public PageReference newRecord() {
        String keyPrefix = Schema.getGlobalDescribe().get(this.objectNameAttribute).getDescribe().getKeyPrefix();
        PageReference pageNew = new PageReference('/' + keyPrefix + '/e');
        pageNew.getParameters().put('retURL', '/' + this.recordId);
        pageNew.setRedirect(true);

        return pageNew;
    }
}
