version 1.0

task Seeker.pl {
  input {
    Boolean? none_input_file
    Boolean? output_file_name
    Boolean? dir
    Boolean? verbose
  }
  command <<<
    seeker.pl \
      ~{true="-i" false="" none_input_file} \
      ~{true="--output" false="" output_file_name} \
      ~{true="--dir" false="" dir} \
      ~{true="-verbose" false="" verbose}
  >>>
  parameter_meta {
    none_input_file: ", none         - Input file (can be multiple, each with own flag)"
    output_file_name: "- Output file name (default StrainSeeker_output)"
    dir: "- Path to database directory"
    verbose: "- Print out more of the working process"
  }
}