version 1.0

task BoltCall {
  input {
    Boolean? sample_file_path
    Boolean? reference_file_path
    File? output_path_required
    Boolean? number_threads_use
    String? var_command
  }
  command <<<
    bolt call \
      ~{var_command} \
      ~{if (sample_file_path) then "-b" else ""} \
      ~{if (reference_file_path) then "-r" else ""} \
      ~{if (output_path_required) then "-o" else ""} \
      ~{if (number_threads_use) then "-t" else ""}
  >>>
  parameter_meta {
    sample_file_path: "sample file path (*required)"
    reference_file_path: "reference file path (*required)"
    output_path_required: "output path (*required)"
    number_threads_use: "number of threads to use"
    var_command: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_path_required = "${in_output_path_required}"
  }
}