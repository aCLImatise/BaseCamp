version 1.0

task SgaSubgraph {
  input {
    Boolean? verbose
    File? out
    Int? size
  }
  command <<<
    sga subgraph \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    out: "write the subgraph to FILE (default: subgraph.asqg.gz)"
    size: "the size of the subgraph to extract, all vertices that are at most N hops\\naway from the root will be included (default: 5)"
  }
  output {
    File out_stdout = stdout()
  }
}