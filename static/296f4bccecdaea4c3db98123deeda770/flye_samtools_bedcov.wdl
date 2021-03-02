version 1.0

task FlyesamtoolsBedcov {
  input {
    Int? mapping_quality_threshold
    Boolean? include_deletions_d
    File? input_fmt_option
    File? reference
    String sam_tools
    String bed_cov
    String in_dot_bed
    Int in_one_dot_bam
  }
  command <<<
    flye_samtools bedcov \
      ~{sam_tools} \
      ~{bed_cov} \
      ~{in_dot_bed} \
      ~{in_one_dot_bam} \
      ~{if defined(mapping_quality_threshold) then ("-Q " +  '"' + mapping_quality_threshold + '"') else ""} \
      ~{if (include_deletions_d) then "-j" else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mapping_quality_threshold: "mapping quality threshold [0]"
    include_deletions_d: "do not include deletions (D) and ref skips (N) in bedcov computation"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]\\n"
    sam_tools: ""
    bed_cov: ""
    in_dot_bed: ""
    in_one_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}