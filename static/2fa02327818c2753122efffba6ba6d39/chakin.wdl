version 1.0

task Chakin {
  input {
    Boolean verboseVerbose
    String instanceInstance
    String pathPath
  }
  command <<<
    chakin \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(instanceInstance) then ("--instance " +  '"' + instanceInstance + '"') else ""} \
      ~{if defined(pathPath) then ("--path " +  '"' + pathPath + '"') else ""}
  >>>
}