version 1.0

task FlyesamtoolsCalmd {
  input {
    Boolean? change_identical_bases
    Boolean? uncompressed_bam_output
    Boolean? compressed_bam_output
    Boolean? ignored_input_format
    Boolean? modify_quality_string
    Boolean? use_quiet_mode
    Boolean? compute_bq_tag
    Boolean? extended_baq_better
    File? input_fmt_option
    String? output_fmt
    File? output_fmt_option
    File? reference
    Int? threads
    Boolean? eu_bra_esq
    String sam_tools
    String calm_d
    String aln_dot_bam
    String ref_dot_fast_a
  }
  command <<<
    flye_samtools calmd \
      ~{sam_tools} \
      ~{calm_d} \
      ~{aln_dot_bam} \
      ~{ref_dot_fast_a} \
      ~{if (change_identical_bases) then "-e" else ""} \
      ~{if (uncompressed_bam_output) then "-u" else ""} \
      ~{if (compressed_bam_output) then "-b" else ""} \
      ~{if (ignored_input_format) then "-S" else ""} \
      ~{if (modify_quality_string) then "-A" else ""} \
      ~{if (use_quiet_mode) then "-Q" else ""} \
      ~{if (compute_bq_tag) then "-r" else ""} \
      ~{if (extended_baq_better) then "-E" else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(output_fmt) then ("--output-fmt " +  '"' + output_fmt + '"') else ""} \
      ~{if defined(output_fmt_option) then ("--output-fmt-option " +  '"' + output_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (eu_bra_esq) then "-eubrAESQ" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    change_identical_bases: "change identical bases to '='"
    uncompressed_bam_output: "uncompressed BAM output (for piping)"
    compressed_bam_output: "compressed BAM output"
    ignored_input_format: "ignored (input format is auto-detected)"
    modify_quality_string: "modify the quality string"
    use_quiet_mode: "use quiet mode to output less debug info to stdout"
    compute_bq_tag: "compute the BQ tag (without -A) or cap baseQ by BAQ (with -A)"
    extended_baq_better: "extended BAQ for better sensitivity but lower specificity"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    output_fmt: "[,OPT[=VAL]]...\\nSpecify output format (SAM, BAM, CRAM)"
    output_fmt_option: "[=VAL]\\nSpecify a single output file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]\\n"
    eu_bra_esq: ""
    sam_tools: ""
    calm_d: ""
    aln_dot_bam: ""
    ref_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_fmt_option = "${in_output_fmt_option}"
  }
}