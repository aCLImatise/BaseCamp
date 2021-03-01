version 1.0

task SamtoolsAmpliconclip {
  input {
    Boolean? file_bedfile_removed
    File? file_output_file
    Boolean? file_write_stats
    Boolean? output_uncompressed_data
    Boolean? soft_clip
    Boolean? hard_clip
    Boolean? both_ends
    Boolean? strand
    Boolean? clipped
    Boolean? fail
    Int? filter_len
    Boolean? fail_len
    Boolean? no_excluded
    File? rejects_file
    Boolean? original
    Boolean? keep_tag
    Boolean? no_pg
    File? input_fmt_option
    String? output_fmt
    File? output_fmt_option
    File? reference
    Int? threads
    Int? verbosity
  }
  command <<<
    samtools ampliconclip \
      ~{if (file_bedfile_removed) then "-b" else ""} \
      ~{if (file_output_file) then "-o" else ""} \
      ~{if (file_write_stats) then "-f" else ""} \
      ~{if (output_uncompressed_data) then "-u" else ""} \
      ~{if (soft_clip) then "--soft-clip" else ""} \
      ~{if (hard_clip) then "--hard-clip" else ""} \
      ~{if (both_ends) then "--both-ends" else ""} \
      ~{if (strand) then "--strand" else ""} \
      ~{if (clipped) then "--clipped" else ""} \
      ~{if (fail) then "--fail" else ""} \
      ~{if defined(filter_len) then ("--filter-len " +  '"' + filter_len + '"') else ""} \
      ~{if (fail_len) then "--fail-len" else ""} \
      ~{if (no_excluded) then "--no-excluded" else ""} \
      ~{if defined(rejects_file) then ("--rejects-file " +  '"' + rejects_file + '"') else ""} \
      ~{if (original) then "--original" else ""} \
      ~{if (keep_tag) then "--keep-tag" else ""} \
      ~{if (no_pg) then "--no-PG" else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(output_fmt) then ("--output-fmt " +  '"' + output_fmt + '"') else ""} \
      ~{if defined(output_fmt_option) then ("--output-fmt-option " +  '"' + output_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/samtools:1.11--h6270b1f_0"
  }
  parameter_meta {
    file_bedfile_removed: "FILE            bedfile of amplicons to be removed."
    file_output_file: "FILE            output file name (default stdout)."
    file_write_stats: "FILE            write stats to file name (default stderr)"
    output_uncompressed_data: "Output uncompressed data"
    soft_clip: "soft clip amplicons from reads (default)"
    hard_clip: "hard clip amplicons from reads."
    both_ends: "clip on both ends."
    strand: "use strand data from bed file."
    clipped: "only output clipped reads."
    fail: "mark unclipped, mapped reads as QCFAIL."
    filter_len: "do not output reads INT size or shorter."
    fail_len: "INT    mark as QCFAIL reads INT size or shorter."
    no_excluded: "do not write excluded reads (unmapped or QCFAIL)."
    rejects_file: "file to write filtered reads."
    original: "for clipped entries add an OA tag with original data."
    keep_tag: "for clipped entries keep the old NM and MD tags."
    no_pg: "do not add an @PG line."
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    output_fmt: "[,OPT[=VAL]]...\\nSpecify output format (SAM, BAM, CRAM)"
    output_fmt_option: "[=VAL]\\nSpecify a single output file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    verbosity: "Set level of verbosity\\n"
  }
  output {
    File out_stdout = stdout()
    File out_file_output_file = "${in_file_output_file}"
    File out_output_fmt_option = "${in_output_fmt_option}"
  }
}