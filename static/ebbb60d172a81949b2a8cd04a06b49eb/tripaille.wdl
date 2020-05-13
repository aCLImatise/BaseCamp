version 1.0

task Tripaille {
  input {
    Boolean verboseVerbose
    String instanceInstance
    String pathPath
  }
  command <<<
    tripaille \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(instanceInstance) then ("--instance " +  '"' + instanceInstance + '"') else ""} \
      ~{if defined(pathPath) then ("--path " +  '"' + pathPath + '"') else ""}
  >>>
}