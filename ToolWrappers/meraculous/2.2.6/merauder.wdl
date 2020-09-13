version 1.0

task Merauder {
  input {
    Boolean? aggressive_closures
    File? contig_fasta_file
    Int? minimum_depth_default
    File? gap_data_file
    Int? maximum_insert_size
    Int? mer_size
    Boolean? polymorphic_mode
    Int? quality_offset_default
    String? exclude_repeats
    File? scaffold_report_file
    Boolean? verbose_mode
  }
  command <<<
    merauder \
      ~{if (aggressive_closures) then "-A" else ""} \
      ~{if defined(contig_fasta_file) then ("-c " +  '"' + contig_fasta_file + '"') else ""} \
      ~{if defined(minimum_depth_default) then ("-D " +  '"' + minimum_depth_default + '"') else ""} \
      ~{if defined(gap_data_file) then ("-g " +  '"' + gap_data_file + '"') else ""} \
      ~{if defined(maximum_insert_size) then ("-i " +  '"' + maximum_insert_size + '"') else ""} \
      ~{if defined(mer_size) then ("-m " +  '"' + mer_size + '"') else ""} \
      ~{if (polymorphic_mode) then "-P" else ""} \
      ~{if defined(quality_offset_default) then ("-Q " +  '"' + quality_offset_default + '"') else ""} \
      ~{if defined(exclude_repeats) then ("-R " +  '"' + exclude_repeats + '"') else ""} \
      ~{if defined(scaffold_report_file) then ("-s " +  '"' + scaffold_report_file + '"') else ""} \
      ~{if (verbose_mode) then "-V" else ""}
  >>>
  parameter_meta {
    aggressive_closures: "Aggressive closures"
    contig_fasta_file: "*                   Contig FASTA file"
    minimum_depth_default: "Minimum depth (default 2)"
    gap_data_file: "*                   Gap data file"
    maximum_insert_size: "Maximum insert size"
    mer_size: "Mer size"
    polymorphic_mode: "Polymorphic mode"
    quality_offset_default: "Quality offset (default 33)"
    exclude_repeats: "Exclude repeats"
    scaffold_report_file: "*                   Scaffold report file"
    verbose_mode: "Verbose mode"
  }
  output {
    File out_stdout = stdout()
  }
}