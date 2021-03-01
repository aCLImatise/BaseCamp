version 1.0

task RadsexProcess {
  input {
    Boolean? input_dir
    File? output_file
    Boolean? threads
    Boolean? min_depth
  }
  command <<<
    radsex process \
      ~{if (input_dir) then "--input-dir" else ""} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (min_depth) then "--min-depth" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_dir: "TEXT:DIR                  Path to a directory contains demultiplexed sequence files              [REQUIRED]"
    output_file: "TEXT                      Path to the output file (table of marker depths in each individual)    [REQUIRED]"
    threads: "UINT:INT in [1 - 9999]    Number of threads to use                                               [1]"
    min_depth: "UINT:INT in [1 - 9999]    Minimum depth in at least one individual to retain a marker            [1]"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}