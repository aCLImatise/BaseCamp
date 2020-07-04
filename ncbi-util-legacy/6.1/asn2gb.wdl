version 1.0

task Asn2gb {
  input {
    Boolean? asn_type_single
  }
  command <<<
    asn2gb \
      ~{true="-a" false="" asn_type_single}
  >>>
  parameter_meta {
    asn_type_single: "ASN.1 Type Single Record: a Any, e Seq-entry, b Bioseq, s Bioseq-set, m Seq-submit, q Catenated Release File: t Batch Bioseq-set, u Batch Seq-submit"
  }
}