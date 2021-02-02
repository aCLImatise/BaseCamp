version 1.0

task SamtoolsMerge {
  input {
    Boolean? input_files_sorted_read
    String? input_files_sorted_tag
    Boolean? attach_rg_tag
    Boolean? uncompressed_bam_output
    Boolean? overwrite_output_bam
    Boolean? compress_level
    Int? compression_level_from
    File? merge_file_str
    File? copy_header_file
    Boolean? combine_rg_headers
    Boolean? combine_pg_headers
    String? override_random_seed
    File? list_input_bam
    Boolean? use_customized_files
    Boolean? no_pg
    File? input_fmt_option
    String? output_fmt
    File? output_fmt_option
    File? reference
    Int? threads
    Boolean? write_index
    Int? verbosity
    Boolean? n_url_f
    String out_dot_bam
    Int in_one_dot_bam
    String? inn_dot_bam
  }
  command <<<
    samtools merge \
      ~{out_dot_bam} \
      ~{in_one_dot_bam} \
      ~{inn_dot_bam} \
      ~{if (input_files_sorted_read) then "-n" else ""} \
      ~{if defined(input_files_sorted_tag) then ("-t " +  '"' + input_files_sorted_tag + '"') else ""} \
      ~{if (attach_rg_tag) then "-r" else ""} \
      ~{if (uncompressed_bam_output) then "-u" else ""} \
      ~{if (overwrite_output_bam) then "-f" else ""} \
      ~{if (compress_level) then "-1" else ""} \
      ~{if defined(compression_level_from) then ("-l " +  '"' + compression_level_from + '"') else ""} \
      ~{if defined(merge_file_str) then ("-R " +  '"' + merge_file_str + '"') else ""} \
      ~{if defined(copy_header_file) then ("-h " +  '"' + copy_header_file + '"') else ""} \
      ~{if (combine_rg_headers) then "-c" else ""} \
      ~{if (combine_pg_headers) then "-p" else ""} \
      ~{if defined(override_random_seed) then ("-s " +  '"' + override_random_seed + '"') else ""} \
      ~{if defined(list_input_bam) then ("-b " +  '"' + list_input_bam + '"') else ""} \
      ~{if (use_customized_files) then "-X" else ""} \
      ~{if (no_pg) then "--no-PG" else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(output_fmt) then ("--output-fmt " +  '"' + output_fmt + '"') else ""} \
      ~{if defined(output_fmt_option) then ("--output-fmt-option " +  '"' + output_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (write_index) then "--write-index" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (n_url_f) then "-nurlf" else ""}
  >>>
  parameter_meta {
    input_files_sorted_read: "Input files are sorted by read name"
    input_files_sorted_tag: "Input files are sorted by TAG value"
    attach_rg_tag: "Attach RG tag (inferred from file names)"
    uncompressed_bam_output: "Uncompressed BAM output"
    overwrite_output_bam: "Overwrite the output BAM if exist"
    compress_level: "Compress level 1"
    compression_level_from: "Compression level, from 0 to 9 [-1]"
    merge_file_str: "Merge file in the specified region STR [all]"
    copy_header_file: "Copy the header in FILE to <out.bam> [in1.bam]"
    combine_rg_headers: "Combine @RG headers with colliding IDs [alter IDs to be distinct]"
    combine_pg_headers: "Combine @PG headers with colliding IDs [alter IDs to be distinct]"
    override_random_seed: "Override random seed"
    list_input_bam: "List of input BAM filenames, one per line [null]"
    use_customized_files: "Use customized index files"
    no_pg: "do not add a PG line"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    output_fmt: "[,OPT[=VAL]]...\\nSpecify output format (SAM, BAM, CRAM)"
    output_fmt_option: "[=VAL]\\nSpecify a single output file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    write_index: "Automatically index the output files [off]"
    verbosity: "Set level of verbosity\\n"
    n_url_f: ""
    out_dot_bam: ""
    in_one_dot_bam: ""
    inn_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_copy_header_file = "${in_copy_header_file}"
    File out_output_fmt_option = "${in_output_fmt_option}"
  }
}