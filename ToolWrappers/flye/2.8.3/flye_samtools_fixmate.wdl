version 1.0

task FlyesamtoolsFixmate {
  input {
    Boolean? remove_unmapped_reads
    Boolean? disable_fr_proper
    Boolean? add_cigar_tag
    Boolean? add_mate_score
    File? input_fmt_option
    String? output_fmt
    File? output_fmt_option
    File? reference
    Int? threads
    String sam_tools
    String fix_mate
    String in_dot_names_rt_dot_bam
    String out_dot_names_rt_dot_bam
  }
  command <<<
    flye_samtools fixmate \
      ~{sam_tools} \
      ~{fix_mate} \
      ~{in_dot_names_rt_dot_bam} \
      ~{out_dot_names_rt_dot_bam} \
      ~{if (remove_unmapped_reads) then "-r" else ""} \
      ~{if (disable_fr_proper) then "-p" else ""} \
      ~{if (add_cigar_tag) then "-c" else ""} \
      ~{if (add_mate_score) then "-m" else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(output_fmt) then ("--output-fmt " +  '"' + output_fmt + '"') else ""} \
      ~{if defined(output_fmt_option) then ("--output-fmt-option " +  '"' + output_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/flye:2.8.3--py38h1c8e9b9_0"
  }
  parameter_meta {
    remove_unmapped_reads: "Remove unmapped reads and secondary alignments"
    disable_fr_proper: "Disable FR proper pair check"
    add_cigar_tag: "Add template cigar ct tag"
    add_mate_score: "Add mate score tag"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    output_fmt: "[,OPT[=VAL]]...\\nSpecify output format (SAM, BAM, CRAM)"
    output_fmt_option: "[=VAL]\\nSpecify a single output file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    sam_tools: ""
    fix_mate: ""
    in_dot_names_rt_dot_bam: ""
    out_dot_names_rt_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_fmt_option = "${in_output_fmt_option}"
  }
}