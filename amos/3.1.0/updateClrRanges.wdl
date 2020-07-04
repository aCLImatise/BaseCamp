version 1.0

task UpdateClrRanges {
  input {
    Boolean? i
    String bank_name
    String seqname_do_tend_five_do_tend_three_dot_txt
  }
  command <<<
    updateClrRanges \
      ~{bank_name} \
      ~{seqname_do_tend_five_do_tend_three_dot_txt} \
      ~{true="-i" false="" i}
  >>>
  parameter_meta {
    i: ""
    bank_name: ""
    seqname_do_tend_five_do_tend_three_dot_txt: ""
  }
}