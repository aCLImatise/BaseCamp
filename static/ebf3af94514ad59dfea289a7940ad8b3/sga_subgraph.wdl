version 1.0

task SgaSubgraph {
  input {
    Boolean verboseVerbose
    File outOut
    String sizeSize
  }
  command <<<
    sga subgraph \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""}
  >>>
}