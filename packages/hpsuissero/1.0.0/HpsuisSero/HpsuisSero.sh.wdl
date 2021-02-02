version 1.0

task HpsuisSerosh {
  input {
    Boolean? input_raw_reads
    File? path_output_directory
    Boolean? sample_name
    Boolean? threads
  }
  command <<<
    HpsuisSero_sh \
      ~{if (input_raw_reads) then "-i" else ""} \
      ~{if (path_output_directory) then "-o" else ""} \
      ~{if (sample_name) then "-s" else ""} \
      ~{if (threads) then "--threads" else ""}
  >>>
  parameter_meta {
    input_raw_reads: "input raw reads"
    path_output_directory: "path to output directory"
    sample_name: "sample name"
    threads: "number of threads [4]"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_directory = "${in_path_output_directory}"
  }
}