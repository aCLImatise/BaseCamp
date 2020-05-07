version 1.0

task Sdreport {
  input {
    Boolean lL
    Boolean tT
    Boolean cC
    Boolean sS
    Boolean supSup
    Boolean idId
    String nhNh
    String oO
    String normNorm
  }
  command <<<
    sdreport \
      ~{true="-l" false="" lL} \
      ~{true="-t" false="" tT} \
      ~{true="-c" false="" cC} \
      ~{true="-s" false="" sS} \
      ~{true="-sup" false="" supSup} \
      ~{true="-id" false="" idId} \
      ~{if defined(nhNh) then ("-nh " +  '"' + nhNh + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(normNorm) then ("-norm " +  '"' + normNorm + '"') else ""}
  >>>
}