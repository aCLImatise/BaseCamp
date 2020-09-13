version 1.0

task Downpore {
  input {
    String overlap
    String trim
    String consensus
    String full_de_novo
  }
  command <<<
    downpore \
      ~{overlap} \
      ~{trim} \
      ~{consensus} \
      ~{full_de_novo}
  >>>
  parameter_meta {
    overlap: "map"
    trim: "subseq"
    consensus: "align"
    full_de_novo: "kmers"
  }
  output {
    File out_stdout = stdout()
  }
}