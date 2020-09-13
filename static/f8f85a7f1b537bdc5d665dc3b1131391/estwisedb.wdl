version 1.0

task Estwisedb {
  input {
    String dna
    String protein
    String hmm
    String model
    String alg
    String var_output
  }
  command <<<
    estwisedb \
      ~{dna} \
      ~{protein} \
      ~{hmm} \
      ~{model} \
      ~{alg} \
      ~{var_output}
  >>>
  parameter_meta {
    dna: "[-tfor]"
    protein: "[-s,-t,-g,-e,-m]"
    hmm: "[-hmmer,-hname]"
    model: "[-codon,-subs,-indel,-null]"
    alg: "[-kbyte,-alg,-aalg,-aln,-noh]"
    var_output: "[-pretty,-alb,-pal,-block,-divide]"
  }
  output {
    File out_stdout = stdout()
  }
}