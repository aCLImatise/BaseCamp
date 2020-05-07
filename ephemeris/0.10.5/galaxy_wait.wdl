version 1.0

task GalaxyWait {
  input {
    String timeoutTimeout
    Boolean verboseVerbose
    String galaxyGalaxy
  }
  command <<<
    galaxy-wait \
      ~{if defined(timeoutTimeout) then ("--timeout " +  '"' + timeoutTimeout + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(galaxyGalaxy) then ("--galaxy " +  '"' + galaxyGalaxy + '"') else ""}
  >>>
}