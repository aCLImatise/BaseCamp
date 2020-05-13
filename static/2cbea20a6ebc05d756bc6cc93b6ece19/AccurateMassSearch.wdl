version 1.0

task AccurateMassSearch {
  input {
    File inIn
    File outOut
    File outOutAnnotation
    Boolean dbDb
    Boolean dbDb
    File positivePositiveAdducts
    File negativeNegativeAdducts
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean algorithmAlgorithm
    Boolean httpHttp
  }
  command <<<
    AccurateMassSearch \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutAnnotation) then ("-out_annotation " +  '"' + outOutAnnotation + '"') else ""} \
      ~{true="-db" false="" dbDb} \
      ~{true="-db" false="" dbDb} \
      ~{if defined(positivePositiveAdducts) then ("-positive_adducts " +  '"' + positivePositiveAdducts + '"') else ""} \
      ~{if defined(negativeNegativeAdducts) then ("-negative_adducts " +  '"' + negativeNegativeAdducts + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- algorithm" false="" algorithmAlgorithm} \
      ~{true="- http" false="" httpHttp}
  >>>
}