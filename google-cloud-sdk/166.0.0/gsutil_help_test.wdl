version 1.0

task GsutilHelpTest {
  input {
    Boolean bB
    Boolean cC
    Boolean fF
    Boolean lL
    String pP
    Boolean sS
    Boolean uU
  }
  command <<<
    gsutil help test \
      ~{true="-b" false="" bB} \
      ~{true="-c" false="" cC} \
      ~{true="-f" false="" fF} \
      ~{true="-l" false="" lL} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-u" false="" uU}
  >>>
}