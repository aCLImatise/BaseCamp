version 1.0

task DrDiscoDetect {
  input {
    Int minMinEScore
    String? optionsOptions
    String? bamBamInputFile
    String? outputOutputFile
  }
  command <<<
    dr-disco detect \
      ~{optionsOptions} \
      ~{if defined(minMinEScore) then ("--min-e-score " +  '"' + minMinEScore + '"') else ""} \
      ~{bamBamInputFile} \
      ~{outputOutputFile}
  >>>
}