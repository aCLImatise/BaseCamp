version 1.0

task Genewisedb {
  input {
    String model
    String _cont_
  }
  command <<<
    genewisedb \
      ~{model} \
      ~{_cont_}
  >>>
  parameter_meta {
    model: "[-codon,-gene,-cfreq,-splice,-subs,-indel,-intron,-null]"
    _cont_: "[-pretty,-genes,-para,-sum,-cdna,-trans,-ace,]\\n..cont  [-gff,-gener,-alb,-pal,-block,-divide]"
  }
  output {
    File out_stdout = stdout()
  }
}