version 1.0

task Estwise {
  input {
    String model
    String alg
    String var_output
  }
  command <<<
    estwise \
      ~{model} \
      ~{alg} \
      ~{var_output}
  >>>
  parameter_meta {
    model: "[-codon,-subs,-indel,-null]"
    alg: "[-kbyte,-alg]"
    var_output: "[-pretty,-para,-sum,-alb,-pal,-block,-divide]"
  }
  output {
    File out_stdout = stdout()
  }
}