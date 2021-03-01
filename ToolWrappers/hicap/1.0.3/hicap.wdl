version 1.0

task Hicap {
  input {
    String? query_fp
    Directory? output_dir
    Boolean? help_all
    Boolean? v
  }
  command <<<
    hicap \
      ~{if defined(query_fp) then ("--query_fp " +  '"' + query_fp + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if (help_all) then "--help_all" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    query_fp: "Input FASTA query"
    output_dir: "Output directory"
    help_all: "Display extended help"
    v: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}