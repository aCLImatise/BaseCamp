version 1.0

task MtsvBuildFLAGS {
  input {
    String fastFastA
    String indexIndex
    String? optionsOptions
  }
  command <<<
    mtsv-build FLAGS \
      ~{optionsOptions} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""}
  >>>
}