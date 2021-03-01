version 1.0

task Genewisedb {
  input {
    String _cont_
  }
  command <<<
    genewisedb \
      ~{_cont_}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _cont_: "[-pretty,-genes,-para,-sum,-cdna,-trans,-ace,]\\n..cont  [-gff,-gener,-alb,-pal,-block,-divide]"
  }
  output {
    File out_stdout = stdout()
  }
}