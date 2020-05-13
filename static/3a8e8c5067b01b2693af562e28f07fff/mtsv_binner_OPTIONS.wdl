version 1.0

task MtsvBinnerOPTIONS {
  input {
    String fastFastA
    String indexIndex
    String? flagsFlags
    String? optionsOptions
  }
  command <<<
    mtsv-binner OPTIONS \
      ~{flagsFlags} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{optionsOptions}
  >>>
}