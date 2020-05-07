version 1.0

task Redbuild {
  input {
    String bB
    Int mM
    String gG
    Boolean rR
  }
  command <<<
    redbuild \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="-r" false="" rR}
  >>>
}