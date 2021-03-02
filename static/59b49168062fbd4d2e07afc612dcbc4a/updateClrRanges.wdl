version 1.0

task UpdateClrRanges {
  input {
    Boolean? i
    String bank_name
    Int seqname_do_tend_five_do_tend_three_dot_txt
  }
  command <<<
    updateClrRanges \
      ~{bank_name} \
      ~{seqname_do_tend_five_do_tend_three_dot_txt} \
      ~{if (i) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    i: ""
    bank_name: ""
    seqname_do_tend_five_do_tend_three_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
  }
}