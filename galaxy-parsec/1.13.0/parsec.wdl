version 1.0

task Parsec {
  input {
    Boolean verboseVerbose
    String galaxyGalaxyInstance
    String pathPath
  }
  command <<<
    parsec \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(galaxyGalaxyInstance) then ("--galaxy_instance " +  '"' + galaxyGalaxyInstance + '"') else ""} \
      ~{if defined(pathPath) then ("--path " +  '"' + pathPath + '"') else ""}
  >>>
}