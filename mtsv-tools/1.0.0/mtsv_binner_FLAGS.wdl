version 1.0

task MtsvBinnerFLAGS {
  input {
    String fastFastA
    String indexIndex
    String? optionsOptions
  }
  command <<<
    mtsv-binner FLAGS \
      ~{optionsOptions} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""}
  >>>
}