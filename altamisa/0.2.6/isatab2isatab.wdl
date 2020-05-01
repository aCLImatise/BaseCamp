version 1.0

task Isatab2isatab {
  input {
    String inputInputInvestigationFile
    String outputOutputInvestigationFile
    String quotesQuotes
    Boolean noNoWarnings
  }
  command <<<
    isatab2isatab \
      ~{if defined(inputInputInvestigationFile) then ("--input-investigation-file " +  '"' + inputInputInvestigationFile + '"') else ""} \
      ~{if defined(outputOutputInvestigationFile) then ("--output-investigation-file " +  '"' + outputOutputInvestigationFile + '"') else ""} \
      ~{if defined(quotesQuotes) then ("--quotes " +  '"' + quotesQuotes + '"') else ""} \
      ~{true="--no-warnings" false="" noNoWarnings}
  >>>
}