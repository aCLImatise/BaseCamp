version 1.0

task Slncky.v1.0 {
  input {
    Boolean webWeb
    String? bedBedFile
    String? assemblyAssembly
    String? outOutPrefix
  }
  command <<<
    slncky.v1.0 \
      ~{bedBedFile} \
      ~{true="--web" false="" webWeb} \
      ~{assemblyAssembly} \
      ~{outOutPrefix}
  >>>
}