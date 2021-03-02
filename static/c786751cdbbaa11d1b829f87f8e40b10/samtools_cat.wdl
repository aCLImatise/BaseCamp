version 1.0

task SamtoolsCat {
  input {
    File? list_input_bamcram
    File? copy_header_file
    File? output_bamcram
    Boolean? no_pg
    String? output_fmt
    File? output_fmt_option
    Int? threads
    Int? verbosity
    Int in_one_dot_bam
  }
  command <<<
    samtools cat \
      ~{in_one_dot_bam} \
      ~{if defined(list_input_bamcram) then ("-b " +  '"' + list_input_bamcram + '"') else ""} \
      ~{if defined(copy_header_file) then ("-h " +  '"' + copy_header_file + '"') else ""} \
      ~{if defined(output_bamcram) then ("-o " +  '"' + output_bamcram + '"') else ""} \
      ~{if (no_pg) then "--no-PG" else ""} \
      ~{if defined(output_fmt) then ("--output-fmt " +  '"' + output_fmt + '"') else ""} \
      ~{if defined(output_fmt_option) then ("--output-fmt-option " +  '"' + output_fmt_option + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_input_bamcram: "list of input BAM/CRAM file names, one per line"
    copy_header_file: "copy the header from FILE [default is 1st input file]"
    output_bamcram: "output BAM/CRAM"
    no_pg: "do not add a PG line"
    output_fmt: "[,OPT[=VAL]]...\\nSpecify output format (SAM, BAM, CRAM)"
    output_fmt_option: "[=VAL]\\nSpecify a single output file format option in the form\\nof OPTION or OPTION=VALUE"
    threads: "Number of additional threads to use [0]"
    verbosity: "Set level of verbosity\\n"
    in_one_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_fmt_option = "${in_output_fmt_option}"
  }
}