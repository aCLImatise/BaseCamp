version 1.0

task SpadesbwaPac2bwt {
  input {
    Boolean? d
    String bwa
    Int pac_two_bwt
    String in_dot_pac
    String out_dot_bwt
  }
  command <<<
    spades_bwa pac2bwt \
      ~{bwa} \
      ~{pac_two_bwt} \
      ~{in_dot_pac} \
      ~{out_dot_bwt} \
      ~{if (d) then "-d" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/spades:3.15.0--h633aebb_0"
  }
  parameter_meta {
    d: ""
    bwa: ""
    pac_two_bwt: ""
    in_dot_pac: ""
    out_dot_bwt: ""
  }
  output {
    File out_stdout = stdout()
  }
}