version 1.0

task Gnali {
  input {
    String inputInputFile
    String outputOutputDir
    Boolean forceForce
    String? gnGnAli
  }
  command <<<
    gnali \
      ~{gnGnAli} \
      ~{if defined(inputInputFile) then ("--input_file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="--force" false="" forceForce}
  >>>
}