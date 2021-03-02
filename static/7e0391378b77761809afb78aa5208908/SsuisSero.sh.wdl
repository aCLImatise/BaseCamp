version 1.0

task SsuisSerosh {
  input {
    String? raw_reads
    File? path_output_directory
    Boolean? sample_name
    Boolean? threads
  }
  command <<<
    SsuisSero_sh \
      ~{if defined(raw_reads) then ("-i " +  '"' + raw_reads + '"') else ""} \
      ~{if (path_output_directory) then "-o" else ""} \
      ~{if (sample_name) then "-s" else ""} \
      ~{if (threads) then "--threads" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    raw_reads: "raw reads"
    path_output_directory: "path to output directory"
    sample_name: "sample name"
    threads: "number of threads [4]"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_directory = "${in_path_output_directory}"
  }
}