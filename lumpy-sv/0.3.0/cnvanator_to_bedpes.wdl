version 1.0

task CnvanatorToBedpes.py {
  input {
    String cnvCnvCalls
    Boolean cnvCnvKit
    String delDelO
    String dupDupO
    String breakpointBreakpointSize
  }
  command <<<
    cnvanator_to_bedpes.py \
      ~{if defined(cnvCnvCalls) then ("--cnv_calls " +  '"' + cnvCnvCalls + '"') else ""} \
      ~{true="--cnvkit" false="" cnvCnvKit} \
      ~{if defined(delDelO) then ("--del_o " +  '"' + delDelO + '"') else ""} \
      ~{if defined(dupDupO) then ("--dup_o " +  '"' + dupDupO + '"') else ""} \
      ~{if defined(breakpointBreakpointSize) then ("--breakpoint_size " +  '"' + breakpointBreakpointSize + '"') else ""}
  >>>
}