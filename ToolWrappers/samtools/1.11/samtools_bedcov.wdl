version 1.0

task SamtoolsBedcov {
  input {
    Int? mapping_quality_threshold
    Boolean? use_customized_files
    String? remove_specified_flags
    Int? add_specified_flags
    Int? depth_threshold_number
    File? input_fmt_option
    File? reference
    Int? verbosity
    String in_dot_bed
    Int in_one_dot_bam
  }
  command <<<
    samtools bedcov \
      ~{in_dot_bed} \
      ~{in_one_dot_bam} \
      ~{if defined(mapping_quality_threshold) then ("-Q " +  '"' + mapping_quality_threshold + '"') else ""} \
      ~{if (use_customized_files) then "-X" else ""} \
      ~{if defined(remove_specified_flags) then ("-g " +  '"' + remove_specified_flags + '"') else ""} \
      ~{if defined(add_specified_flags) then ("-G " +  '"' + add_specified_flags + '"') else ""} \
      ~{if defined(depth_threshold_number) then ("-d " +  '"' + depth_threshold_number + '"') else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/samtools:1.11--h6270b1f_0"
  }
  parameter_meta {
    mapping_quality_threshold: "mapping quality threshold [0]"
    use_customized_files: "use customized index files"
    remove_specified_flags: "remove the specified flags from the set used to filter out reads"
    add_specified_flags: "add the specified flags to the set used to filter out reads\\nThe default set is UNMAP,SECONDARY,QCFAIL,DUP or 0x704      -j                  do not include deletions (D) and ref skips (N) in bedcov computation"
    depth_threshold_number: "depth threshold. Number of reference bases with coverage above and                          including this value will be displayed in a separate column"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    verbosity: "Set level of verbosity\\n"
    in_dot_bed: ""
    in_one_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}