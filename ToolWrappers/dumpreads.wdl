version 1.0

task Dumpreads {
  input {
    Boolean? dump_reads_fastq
    Int? use_min_base
    Boolean? dump_qualities_fasta
    Boolean? use_eids_fasta
    Boolean? ignore_clear_range
    Boolean? display_range_information
    File? dump_just_eids
    File? dump_just_iids
    Int? set_maximum_number
    Int? minimum_iid_display
    Int? maximum_iid_display
    Boolean? disregard_bank_locks
    Boolean? display_compatible_version
    String dump_reads
  }
  command <<<
    dumpreads \
      ~{dump_reads} \
      ~{if (dump_reads_fastq) then "-f" else ""} \
      ~{if defined(use_min_base) then ("-Q " +  '"' + use_min_base + '"') else ""} \
      ~{if (dump_qualities_fasta) then "-q" else ""} \
      ~{if (use_eids_fasta) then "-e" else ""} \
      ~{if (ignore_clear_range) then "-r" else ""} \
      ~{if (display_range_information) then "-c" else ""} \
      ~{if defined(dump_just_eids) then ("-E " +  '"' + dump_just_eids + '"') else ""} \
      ~{if defined(dump_just_iids) then ("-I " +  '"' + dump_just_iids + '"') else ""} \
      ~{if defined(set_maximum_number) then ("-L " +  '"' + set_maximum_number + '"') else ""} \
      ~{if defined(minimum_iid_display) then ("-m " +  '"' + minimum_iid_display + '"') else ""} \
      ~{if defined(maximum_iid_display) then ("-M " +  '"' + maximum_iid_display + '"') else ""} \
      ~{if (disregard_bank_locks) then "-s" else ""} \
      ~{if (display_compatible_version) then "-v" else ""}
  >>>
  parameter_meta {
    dump_reads_fastq: "Dump reads in fastq format"
    use_min_base: "Use this as the min base quality (default: 33 / Sanger FASTQ)"
    dump_qualities_fasta: "Dump qualities in fasta format instead of sequence"
    use_eids_fasta: "Use EIDs for FastA header instead of IIDs"
    ignore_clear_range: "Ignore clear range and dump entire sequence"
    display_range_information: "Display clear range information on FASTA header for TIGR Assembler"
    dump_just_eids: "Dump just the eids listed in file"
    dump_just_iids: "Dump just the iids listed in file"
    set_maximum_number: "Set the maximum number of bases per line (Default: 70)"
    minimum_iid_display: "Minimum IID to display (not included) (Default all; not compatible with -e,-E,-I options)"
    maximum_iid_display: "Maximum IID to display (included) (Default all; not compatible with -e,-E,-I options)"
    disregard_bank_locks: "Disregard bank locks and write permissions (spy mode)"
    display_compatible_version: "Display the compatible bank version"
    dump_reads: "[options] <bank path>"
  }
  output {
    File out_stdout = stdout()
  }
}