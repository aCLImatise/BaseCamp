version 1.0

task JunctoolsMarkup {
  input {
    String outputOutputDir
    Boolean useUseStrand
    String? referenceReference
    String? inputInput
  }
  command <<<
    junctools markup \
      ~{referenceReference} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="--use_strand" false="" useUseStrand} \
      ~{inputInput}
  >>>
}