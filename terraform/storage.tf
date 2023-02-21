resource "oci_objectstorage_bucket" "test_bucket" {
    #Required
    compartment_id = var.COMPARTMENT_OCID
    name = "2023testabc"
    namespace = "fr8nw9lhlzoo"
}