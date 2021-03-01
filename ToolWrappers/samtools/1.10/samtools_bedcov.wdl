version 1.0

task SamtoolsBedcov {
  input {
    Int? mapping_quality_threshold
    Boolean? use_customized_files
    Boolean? include_deletions_d
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
      ~{if (include_deletions_d) then "-j" else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mapping_quality_threshold: "mapping quality threshold [0]"
    use_customized_files: "use customized index files"
    include_deletions_d: "do not include deletions (D) and ref skips (N) in bedcov computation"
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