version 1.0

task Tesseract {
  input {
    File tessTessDataDir
    File userUserWords
    File userUserPatterns
    String lL
    String cC
    String psmPsm
    Boolean helpHelpPsm
    Boolean listListLangs
    Boolean printPrintParameters
  }
  command <<<
    tesseract \
      ~{if defined(tessTessDataDir) then ("--tessdata-dir " +  '"' + tessTessDataDir + '"') else ""} \
      ~{if defined(userUserWords) then ("--user-words " +  '"' + userUserWords + '"') else ""} \
      ~{if defined(userUserPatterns) then ("--user-patterns " +  '"' + userUserPatterns + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(psmPsm) then ("-psm " +  '"' + psmPsm + '"') else ""} \
      ~{true="--help-psm" false="" helpHelpPsm} \
      ~{true="--list-langs" false="" listListLangs} \
      ~{true="--print-parameters" false="" printPrintParameters}
  >>>
}