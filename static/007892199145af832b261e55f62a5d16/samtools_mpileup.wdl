version 1.0

task SamtoolsMpileup {
  input {
    File fF
    String rR
    File lL
    Int mM
    Int qQ
    Int qQ
    Boolean gG
    Boolean uU
    Boolean bB
  }
  command <<<
    samtools mpileup \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{true="-u" false="" uU} \
      ~{true="-B" false="" bB}
  >>>
}