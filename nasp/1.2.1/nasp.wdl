version 1.0

task Nasp {
  input {
    String configConfig
    String? referenceReferenceFastA
    String? outputOutputFolder
  }
  command <<<
    nasp \
      ~{referenceReferenceFastA} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{outputOutputFolder}
  >>>
}