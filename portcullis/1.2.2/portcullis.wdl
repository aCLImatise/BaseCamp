version 1.0

task Portcullis {
  input {
    Boolean? print_extra_information
    String junctions
  }
  command <<<
    portcullis \
      ~{junctions} \
      ~{if (print_extra_information) then "-v" else ""}
  >>>
  parameter_meta {
    print_extra_information: "[ --verbose ]      Print extra information"
    junctions: "Usage: portcullis [options] <mode> <mode_args>"
  }
  output {
    File out_stdout = stdout()
  }
}