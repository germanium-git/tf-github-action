data "oci_objectstorage_namespace" "my_namespace" {

    #Optional
    compartment_id = var.COMPARTMENT_OCID
}

resource "oci_objectstorage_bucket" "test_bucket" {
    #Required
    compartment_id = var.COMPARTMENT_OCID
    name = "2023testabc"
    namespace = data.oci_objectstorage_namespace.my_namespace.name
}