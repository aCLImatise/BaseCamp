version 1.0

task AnalyzeReadDepth {
  input {
    String verboseVerbose
    String xX
    String cC
    File iI
    Boolean iI
    Boolean dD
    String lL
    Boolean rR
    Boolean uU
  }
  command <<<
    analyze-read-depth \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-d" false="" dD} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-u" false="" uU}
  >>>
}