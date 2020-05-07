version 1.0

task SonicparanoidGetMmseqs2 {
  input {
    String outputOutputDirectory
    Boolean debugDebug
  }
  command <<<
    sonicparanoid-get-mmseqs2 \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}