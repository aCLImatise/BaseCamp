version 1.0

task IRepFilter.py {
  input {
    Boolean tT
    String cC
    String wW
    String rR
    String fF
    String gG
    Boolean longLong
  }
  command <<<
    iRep_filter.py \
      ~{true="-t" false="" tT} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="--long" false="" longLong}
  >>>
}