version 1.0

task SgaSubgraph {
  input {
    Boolean? verbose
    File? out
    String? size
    String? option
  }
  command <<<
    sga subgraph \
      ~{option} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    out: "write the subgraph to FILE (default: subgraph.asqg.gz)"
    size: "the size of the subgraph to extract, all vertices that are at most N hops away from the root will be included (default: 5)"
    option: ""
  }
}