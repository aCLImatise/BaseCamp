version 1.0

task GsutilRewrite {
  input {
    Boolean fF
    Boolean iI
    Boolean kK
    Boolean oO
    Boolean rR
    String sS
  }
  command <<<
    gsutil rewrite \
      ~{true="-f" false="" fF} \
      ~{true="-I" false="" iI} \
      ~{true="-k" false="" kK} \
      ~{true="-O" false="" oO} \
      ~{true="-R" false="" rR} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}