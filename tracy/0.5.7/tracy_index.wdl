version 1.0

task TracyIndex {
  input {
    File? arg_output_file
    String genome_dot_fado_tgz
  }
  command <<<
    tracy index \
      ~{genome_dot_fado_tgz} \
      ~{if (arg_output_file) then "-o" else ""}
  >>>
  parameter_meta {
    arg_output_file: "[ --output ] arg (=\\\"genome.fm9\\\")  output file"
    genome_dot_fado_tgz: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
  }
}