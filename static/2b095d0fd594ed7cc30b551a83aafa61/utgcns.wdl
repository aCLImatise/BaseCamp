version 1.0

task Utgcns {
  input {
    String oO
    String lL
    String aA
    String qQ
    String exportExport
    String? parametersParameters
    String? loggingLogging
  }
  command <<<
    utgcns \
      ~{parametersParameters} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""} \
      ~{if defined(exportExport) then ("-export " +  '"' + exportExport + '"') else ""} \
      ~{loggingLogging}
  >>>
}