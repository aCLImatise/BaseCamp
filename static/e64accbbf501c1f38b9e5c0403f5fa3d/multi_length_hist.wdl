version 1.0

task MultiLengthHist.py {
  input {
    String rR
    String fF
    String bB
    Int lL
    Int uU
    Boolean lL
    String? inputInputCounts
  }
  command <<<
    multi_length_hist.py \
      ~{inputInputCounts} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{true="-L" false="" lL}
  >>>
}