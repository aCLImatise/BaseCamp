version 1.0

task RsatReversecomplement {
  input {
    String reverse_complement
    String sequences
    String util
  }
  command <<<
    rsat reverse_complement \
      ~{reverse_complement} \
      ~{sequences} \
      ~{util}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reverse_complement: "[1mDESCRIPTION[0m"
    sequences: "[1mAUTHORS[0m"
    util: "[1mUSAGE[0m"
  }
  output {
    File out_stdout = stdout()
  }
}