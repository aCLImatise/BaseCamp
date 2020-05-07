version 1.0

task RNAinverse {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Boolean repeatRepeat
    String alphabetAlphabet
    Boolean verboseVerbose
    String functionFunction
    Float finalFinal
    Int danglesDangles
    Boolean noNoGu
    Boolean noNoClosingGu
    String paramParamFile
  }
  command <<<
    RNAinverse \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{true="--repeat" false="" repeatRepeat} \
      ~{if defined(alphabetAlphabet) then ("--alphabet " +  '"' + alphabetAlphabet + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(functionFunction) then ("--function " +  '"' + functionFunction + '"') else ""} \
      ~{if defined(finalFinal) then ("--final " +  '"' + finalFinal + '"') else ""} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""}
  >>>
}