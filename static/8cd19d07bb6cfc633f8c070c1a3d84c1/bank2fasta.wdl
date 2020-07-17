version 1.0

task Bank2fasta {
  input {
    String? bank
    Boolean? eid
    Boolean? iid
    File? dump_just_eids
    File? dump_just_iids
    File? report_qualities_file
    Boolean? show_reads_coverage
  }
  command <<<
    bank2fasta \
      ~{if defined(bank) then ("-bank " +  '"' + bank + '"') else ""} \
      ~{true="-eid" false="" eid} \
      ~{true="-iid" false="" iid} \
      ~{if defined(dump_just_eids) then ("-E " +  '"' + dump_just_eids + '"') else ""} \
      ~{if defined(dump_just_iids) then ("-I " +  '"' + dump_just_iids + '"') else ""} \
      ~{if defined(report_qualities_file) then ("-q " +  '"' + report_qualities_file + '"') else ""} \
      ~{true="-d" false="" show_reads_coverage}
  >>>
  parameter_meta {
    bank: "bank where assembly is stored"
    eid: "report eids"
    iid: "report iids (default)"
    dump_just_eids: "Dump just the contig eids listed in file"
    dump_just_iids: "Dump just the contig iids listed in file"
    report_qualities_file: "Report qualities in file"
    show_reads_coverage: "Show contig details (num reads, coverage) on fasta header line"
  }
}