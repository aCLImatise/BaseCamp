version 1.0

task Genewisedb {
  input {
    String protein
    String hmm
    String model
    String alg
    String _cont_
  }
  command <<<
    genewisedb \
      ~{protein} \
      ~{hmm} \
      ~{model} \
      ~{alg} \
      ~{_cont_}
  >>>
  parameter_meta {
    protein: "[-s,-t,-g,-e,-m]"
    hmm: "[-hmmer,-hname]"
    model: "[-codon,-gene,-cfreq,-splice,-subs,-indel,-intron,-null]"
    alg: "[-kbyte,-alg,-aalg,-aln,-noh]"
    _cont_: "[-pretty,-genes,-para,-sum,-cdna,-trans,-ace,]\\n..cont  [-gff,-gener,-alb,-pal,-block,-divide]"
  }
  output {
    File out_stdout = stdout()
  }
}