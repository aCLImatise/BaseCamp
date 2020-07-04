version 1.0

task TracyIndex {
  input {
    Boolean? arg_output_file
    String genome_dot_fado_tgz
  }
  command <<<
    tracy index \
      ~{genome_dot_fado_tgz} \
      ~{true="-o" false="" arg_output_file}
  >>>
  parameter_meta {
    arg_output_file: "[ --output ] arg (=\"genome.fm9\")  output file"
    genome_dot_fado_tgz: ""
  }
}