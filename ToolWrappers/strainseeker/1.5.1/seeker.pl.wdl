version 1.0

task Seekerpl {
  input {
    Boolean? none_input_file
    File? output_file_name
    Boolean? dir
    Boolean? verbose
  }
  command <<<
    seeker_pl \
      ~{if (none_input_file) then "-i" else ""} \
      ~{if (output_file_name) then "--output" else ""} \
      ~{if (dir) then "--dir" else ""} \
      ~{if (verbose) then "-verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    none_input_file: ", none         - Input file (can be multiple, each with own flag)"
    output_file_name: "- Output file name (default StrainSeeker_output)"
    dir: "- Path to database directory"
    verbose: "- Print out more of the working process"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}