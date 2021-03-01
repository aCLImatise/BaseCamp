version 1.0

task PblayoutM4index {
  input {
    Boolean? piles
    Int in_do_tm_four
  }
  command <<<
    pblayout m4_index \
      ~{in_do_tm_four} \
      ~{if (piles) then "--piles" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbipa:1.3.2--hee625c5_0"
  }
  parameter_meta {
    piles: "STR  Path to a file with a list of read names for which to fetch the piles. One read name per line."
    in_do_tm_four: "STR  Input M4."
  }
  output {
    File out_stdout = stdout()
  }
}