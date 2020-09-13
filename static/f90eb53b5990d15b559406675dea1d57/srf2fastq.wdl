version 1.0

task Srf2fastq {
  input {
    Boolean? use_calibrated_cnf
    Boolean? ignore_bad_reads
    String? split_fastq_files
    Boolean? sequentially_display_regions
    Boolean? ignore_regn_names
    Boolean? append_region_index
    Boolean? include_explicit_sequence
    Int? comma_separated_list
    Boolean? p
    String archive_name
  }
  command <<<
    srf2fastq \
      ~{archive_name} \
      ~{if (use_calibrated_cnf) then "-c" else ""} \
      ~{if (ignore_bad_reads) then "-C" else ""} \
      ~{if defined(split_fastq_files) then ("-s " +  '"' + split_fastq_files + '"') else ""} \
      ~{if (sequentially_display_regions) then "-S" else ""} \
      ~{if (ignore_regn_names) then "-n" else ""} \
      ~{if (append_region_index) then "-a" else ""} \
      ~{if (include_explicit_sequence) then "-e" else ""} \
      ~{if defined(comma_separated_list) then ("-r " +  '"' + comma_separated_list + '"') else ""} \
      ~{if (p) then "-p" else ""}
  >>>
  parameter_meta {
    use_calibrated_cnf: "Use calibrated quality values (CNF1)"
    ignore_bad_reads: "Ignore bad reads"
    split_fastq_files: "Split the fastq files, one for each region in the REGN chunk.\\nThe files are named root_ + the name of the region."
    sequentially_display_regions: "Sequentially display regions rather than append them into\\none long read. (conflicts with -s)"
    ignore_regn_names: "Ignore REGN names: use region index.\\ni.e. root_1, root_2 etc."
    append_region_index: "Append region index to name\\ni.e. name/1, name/2 etc."
    include_explicit_sequence: "Include explicit sequence: the names of the regions of type 'E'"
    comma_separated_list: ",2.. In a comma separated list, specify which regions to reverse,\\ncounting from 1. This will reverse complement the read and\\nreverse the quality scores. (requires -s or -S)\\n"
    p: ""
    archive_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}