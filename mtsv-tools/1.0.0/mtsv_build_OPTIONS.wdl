version 1.0

task MtsvBuildOPTIONS {
  input {
    String fastFastA
    String indexIndex
    String? flagsFlags
    String? optionsOptions
  }
  command <<<
    mtsv-build OPTIONS \
      ~{flagsFlags} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{optionsOptions}
  >>>
}