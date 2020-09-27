version 1.0

task Estwisedb {
  input {
    String dna
    String model
    String var_output
  }
  command <<<
    estwisedb \
      ~{dna} \
      ~{model} \
      ~{var_output}
  >>>
  parameter_meta {
    dna: "[-tfor]"
    model: "[-codon,-subs,-indel,-null]"
    var_output: "[-pretty,-alb,-pal,-block,-divide]"
  }
  output {
    File out_stdout = stdout()
  }
}