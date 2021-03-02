version 1.0

task FlyesamtoolsMarkdup {
  input {
    Boolean? remove_duplicate_reads
    Int? max_read_bases
    Boolean? mark_supplemenary_alignments
    Boolean? report_stats
    String? write_temporary_files
    Boolean? mark_primary_duplicates
    File? input_fmt_option
    String? output_fmt
    File? output_fmt_option
    File? reference
    Int? threads
    String sam_tools
    String mark_dup
    String input_dot_bam
    String output_dot_bam
  }
  command <<<
    flye_samtools markdup \
      ~{sam_tools} \
      ~{mark_dup} \
      ~{input_dot_bam} \
      ~{output_dot_bam} \
      ~{if (remove_duplicate_reads) then "-r" else ""} \
      ~{if defined(max_read_bases) then ("-l " +  '"' + max_read_bases + '"') else ""} \
      ~{if (mark_supplemenary_alignments) then "-S" else ""} \
      ~{if (report_stats) then "-s" else ""} \
      ~{if defined(write_temporary_files) then ("-T " +  '"' + write_temporary_files + '"') else ""} \
      ~{if (mark_primary_duplicates) then "-t" else ""} \
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
    remove_duplicate_reads: "Remove duplicate reads"
    max_read_bases: "Max read length (default 300 bases)"
    mark_supplemenary_alignments: "Mark supplemenary alignments of duplicates as duplicates (slower)."
    report_stats: "Report stats."
    write_temporary_files: "Write temporary files to PREFIX.samtools.nnnn.nnnn.tmp."
    mark_primary_duplicates: "Mark primary duplicates with the name of the original in a 'do' tag. Mainly for information and debugging."
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    output_fmt: "[,OPT[=VAL]]...\\nSpecify output format (SAM, BAM, CRAM)"
    output_fmt_option: "[=VAL]\\nSpecify a single output file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    sam_tools: ""
    mark_dup: ""
    input_dot_bam: ""
    output_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_fmt_option = "${in_output_fmt_option}"
  }
}