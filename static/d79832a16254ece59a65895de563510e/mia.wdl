version 1.0

task Mia {
  input {
    String sS
    Boolean mM
    Boolean iI
    Boolean hH
    Boolean sS
    Boolean nN
  }
  command <<<
    mia \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{true="-I" false="" iI} \
      ~{true="-H" false="" hH} \
      ~{true="-S" false="" sS} \
      ~{true="-N" false="" nN}
  >>>
}