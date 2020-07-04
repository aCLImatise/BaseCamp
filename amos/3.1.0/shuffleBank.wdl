version 1.0

task ShuffleBank {
  input {
    String? bank
    String? common_file_prefix
    Boolean? dump_contigs_bank
    Boolean? dump_reads_bank
    Boolean? eid
    Boolean? iid
    Boolean? dump_fastq_format
    Int? use_min_base
    Boolean? ignore_clear_range
    Boolean? display_details_header
    String? set_maximum_number
    Boolean? fofn_list_files
    String? list_files_specifying
  }
  command <<<
    shuffleBank \
      ~{if defined(bank) then ("-bank " +  '"' + bank + '"') else ""} \
      ~{if defined(common_file_prefix) then ("-p " +  '"' + common_file_prefix + '"') else ""} \
      ~{true="-c" false="" dump_contigs_bank} \
      ~{true="-r" false="" dump_reads_bank} \
      ~{true="-eid" false="" eid} \
      ~{true="-iid" false="" iid} \
      ~{true="-f" false="" dump_fastq_format} \
      ~{if defined(use_min_base) then ("-Q " +  '"' + use_min_base + '"') else ""} \
      ~{true="-a" false="" ignore_clear_range} \
      ~{true="-d" false="" display_details_header} \
      ~{if defined(set_maximum_number) then ("-L " +  '"' + set_maximum_number + '"') else ""} \
      ~{true="-E" false="" fofn_list_files} \
      ~{if defined(list_files_specifying) then ("-I " +  '"' + list_files_specifying + '"') else ""}
  >>>
  parameter_meta {
    bank: "bank where assembly is stored"
    common_file_prefix: "Common file prefix to add to the output"
    dump_contigs_bank: "Dump contigs from the bank (default)"
    dump_reads_bank: "Dump reads from the bank"
    eid: "report eids"
    iid: "report iids (default)"
    dump_fastq_format: "Dump in fastq format"
    use_min_base: "Use this as the min base quality (default: 33 / Sanger FASTQ)"
    ignore_clear_range: "Ignore clear range and dump entire sequence"
    display_details_header: "Display details on header line"
    set_maximum_number: "Set the maximum number of bases per line (Default: 70)"
    fofn_list_files: "<fofn>      List of files specifying by EID where to write"
    list_files_specifying: "List of files specifying by EID where to write"
  }
}