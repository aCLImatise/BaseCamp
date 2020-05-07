version 1.0

task GsutilHelpLs {
  input {
    Boolean lL
    Boolean lL
    Boolean dD
    Boolean bB
    String pP
    Boolean rR
    Boolean aA
    Boolean eE
  }
  command <<<
    gsutil help ls \
      ~{true="-l" false="" lL} \
      ~{true="-L" false="" lL} \
      ~{true="-d" false="" dD} \
      ~{true="-b" false="" bB} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-R" false="" rR} \
      ~{true="-a" false="" aA} \
      ~{true="-e" false="" eE}
  >>>
}