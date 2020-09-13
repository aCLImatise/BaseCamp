version 1.0

task Estwise {
  input {
    String dna
    String protein
    String hmm
    String model
    String alg
    String var_output
  }
  command <<<
    estwise \
      ~{dna} \
      ~{protein} \
      ~{hmm} \
      ~{model} \
      ~{alg} \
      ~{var_output}
  >>>
  parameter_meta {
    dna: "[-u,-v,-trev,-tfor,-both,-tabs]"
    protein: "[-s,-t,-g,-e,-m]"
    hmm: "[-hmmer,-hname]"
    model: "[-codon,-subs,-indel,-null]"
    alg: "[-kbyte,-alg]"
    var_output: "[-pretty,-para,-sum,-alb,-pal,-block,-divide]"
  }
  output {
    File out_stdout = stdout()
  }
}