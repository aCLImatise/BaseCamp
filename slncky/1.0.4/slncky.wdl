version 1.0

task Slncky {
  input {
    Boolean webWeb
    String? bedBedFile
    String? assemblyAssembly
    String? outOutPrefix
  }
  command <<<
    slncky \
      ~{bedBedFile} \
      ~{true="--web" false="" webWeb} \
      ~{assemblyAssembly} \
      ~{outOutPrefix}
  >>>
}