version 1.0

task SpadesbwaBwt2sa {
  input {
    Int? i
    String bwa
    Int bwt_two_sa
    String in_dot_bwt
    String out_dots_a
  }
  command <<<
    spades_bwa bwt2sa \
      ~{bwa} \
      ~{bwt_two_sa} \
      ~{in_dot_bwt} \
      ~{out_dots_a} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/spades:3.15.2--h633aebb_0"
  }
  parameter_meta {
    i: ""
    bwa: ""
    bwt_two_sa: ""
    in_dot_bwt: ""
    out_dots_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}