# Virtual Cloud Networks
resource "oci_core_vcn" "vcn1" {
  cidr_block     = "10.10.0.0/16"
  compartment_id = var.COMPARTMENT_OCID
  display_name   = "test-vcn"
}

# Subnet 01
resource "oci_core_subnet" "test_subnet_01" {
  cidr_block        = "10.10.1.0/24"
  display_name      = "test_subnet_01"
  compartment_id    = var.COMPARTMENT_OCID
  vcn_id            = oci_core_vcn.vcn1.id
  security_list_ids = [oci_core_vcn.vcn1.default_security_list_id]
  route_table_id    = oci_core_vcn.vcn1.default_route_table_id
}


# Subnet 02
resource "oci_core_subnet" "test_subnet_02" {
  cidr_block        = "10.10.2.0/24"
  display_name      = "test_subnet_02"
  compartment_id    = var.COMPARTMENT_OCID
  vcn_id            = oci_core_vcn.vcn1.id
  security_list_ids = [oci_core_vcn.vcn1.default_security_list_id]
  route_table_id    = oci_core_vcn.vcn1.default_route_table_id
}