version 1.0

task TripaillePhylogenyARGS {
  input {
    String tri_paille
    String phylogeny
    String var_command
    String? args
  }
  command <<<
    tripaille phylogeny ARGS \
      ~{tri_paille} \
      ~{phylogeny} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tri_paille: ""
    phylogeny: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}