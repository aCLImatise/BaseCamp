version 1.0

task CvgStat {
  input {
    String? name_bank_used
    Boolean? lay
    Boolean? ctg
    Boolean? sc_aff
    Boolean? red
    Boolean? frg
    Boolean? rdf_rg
    Boolean? iid
    Boolean? eid
  }
  command <<<
    cvgStat \
      ~{if defined(name_bank_used) then ("-b " +  '"' + name_bank_used + '"') else ""} \
      ~{if (lay) then "-lay" else ""} \
      ~{if (ctg) then "-ctg" else ""} \
      ~{if (sc_aff) then "-scaff" else ""} \
      ~{if (red) then "-red" else ""} \
      ~{if (frg) then "-frg" else ""} \
      ~{if (rdf_rg) then "-rdfrg" else ""} \
      ~{if (iid) then "-iid" else ""} \
      ~{if (eid) then "-eid" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_bank_used: "- name of bank to be used"
    lay: "- computes coverage of layout messages"
    ctg: "- computes coverage of contig messages (default)"
    sc_aff: "- computes coverage of scaffolds"
    red: "- computes read coverage (default)"
    frg: "- computes fragment/clone coverage"
    rdf_rg: "- computes difference between fragment and read coverages"
    iid: "- headers are iids"
    eid: "- headers are eids"
  }
  output {
    File out_stdout = stdout()
  }
}