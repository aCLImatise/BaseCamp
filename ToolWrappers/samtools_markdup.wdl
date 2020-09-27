version 1.0

task SamtoolsMarkdup {
  input {
    Boolean? remove_duplicate_reads
    Int? max_read_default
    Boolean? mark_supplementary_alignments
    Boolean? report_stats
    File? write_stats_named
    String? write_temporary_files
    Int? optical_distance_set
    Boolean? clear_previous_duplicate
    String? mode
    Boolean? include_fails
    Boolean? no_pg
    Boolean? mark_primary_duplicates
    File? input_fmt_option
    String? output_fmt
    File? output_fmt_option
    File? reference
    Int? threads
    Boolean? write_index
    Int? verbosity
    String input_dot_bam
    String output_dot_bam
  }
  command <<<
    samtools markdup \
      ~{input_dot_bam} \
      ~{output_dot_bam} \
      ~{if (remove_duplicate_reads) then "-r" else ""} \
      ~{if defined(max_read_default) then ("-l " +  '"' + max_read_default + '"') else ""} \
      ~{if (mark_supplementary_alignments) then "-S" else ""} \
      ~{if (report_stats) then "-s" else ""} \
      ~{if defined(write_stats_named) then ("-f " +  '"' + write_stats_named + '"') else ""} \
      ~{if defined(write_temporary_files) then ("-T " +  '"' + write_temporary_files + '"') else ""} \
      ~{if defined(optical_distance_set) then ("-d " +  '"' + optical_distance_set + '"') else ""} \
      ~{if (clear_previous_duplicate) then "-c" else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (include_fails) then "--include-fails" else ""} \
      ~{if (no_pg) then "--no-PG" else ""} \
      ~{if (mark_primary_duplicates) then "-t" else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(output_fmt) then ("--output-fmt " +  '"' + output_fmt + '"') else ""} \
      ~{if defined(output_fmt_option) then ("--output-fmt-option " +  '"' + output_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (write_index) then "--write-index" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    remove_duplicate_reads: "Remove duplicate reads"
    max_read_default: "Max read length (default 300 bases)"
    mark_supplementary_alignments: "Mark supplementary alignments of duplicates as duplicates (slower)."
    report_stats: "Report stats."
    write_stats_named: "Write stats to named file.  Implies -s."
    write_temporary_files: "Write temporary files to PREFIX.samtools.nnnn.nnnn.tmp."
    optical_distance_set: "Optical distance (if set, marks with dt tag)"
    clear_previous_duplicate: "Clear previous duplicate settings and tags."
    mode: "Duplicate decision method for paired reads.\\nTYPE = t measure positions based on template start/end (default).\\ns measure positions based on sequence start."
    include_fails: "Include quality check failed reads."
    no_pg: "Do not add a PG line"
    mark_primary_duplicates: "Mark primary duplicates with the name of the original in a 'do' tag. Mainly for information and debugging."
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    output_fmt: "[,OPT[=VAL]]...\\nSpecify output format (SAM, BAM, CRAM)"
    output_fmt_option: "[=VAL]\\nSpecify a single output file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    write_index: "Automatically index the output files [off]"
    verbosity: "Set level of verbosity"
    input_dot_bam: ""
    output_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_fmt_option = "${in_output_fmt_option}"
  }
}