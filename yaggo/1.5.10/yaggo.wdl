version 1.0

task Yaggo {
  input {
    File outputOutput
    File licenseLicense
    Boolean manMan
    Boolean stubStub
    File zcZc
    Boolean extendedExtendedSyntax
    Boolean debugDebug
  }
  command <<<
    yaggo \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(licenseLicense) then ("--license " +  '"' + licenseLicense + '"') else ""} \
      ~{true="--man" false="" manMan} \
      ~{true="--stub" false="" stubStub} \
      ~{if defined(zcZc) then ("--zc " +  '"' + zcZc + '"') else ""} \
      ~{true="--extended-syntax" false="" extendedExtendedSyntax} \
      ~{true="--debug" false="" debugDebug}
  >>>
}