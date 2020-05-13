version 1.0

task SingularityInspect {
  input {
    Boolean appApp
    Boolean labelsLabels
    Boolean defDefFile
    Boolean runRunScript
    Boolean testTest
    String environmentEnvironment
    Boolean jsonJson
    Boolean helpHelpFile
  }
  command <<<
    singularity inspect \
      ~{true="--app" false="" appApp} \
      ~{true="--labels" false="" labelsLabels} \
      ~{true="--deffile" false="" defDefFile} \
      ~{true="--runscript" false="" runRunScript} \
      ~{true="--test" false="" testTest} \
      ~{if defined(environmentEnvironment) then ("--environment " +  '"' + environmentEnvironment + '"') else ""} \
      ~{true="--json" false="" jsonJson} \
      ~{true="--helpfile" false="" helpHelpFile}
  >>>
}