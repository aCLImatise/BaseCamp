version 1.0

task BcftoolsSort {
  input {
    Float maxMaxMem
    File outputOutputFile
    Boolean outputOutputType
    String tempTempDir
    String? optionsOptions
    File? fileFileVcf
  }
  command <<<
    bcftools sort \
      ~{optionsOptions} \
      ~{if defined(maxMaxMem) then ("--max-mem " +  '"' + maxMaxMem + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--output-type" false="" outputOutputType} \
      ~{if defined(tempTempDir) then ("--temp-dir " +  '"' + tempTempDir + '"') else ""} \
      ~{fileFileVcf}
  >>>
}