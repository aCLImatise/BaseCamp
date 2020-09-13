version 1.0

task ShigatyperRead1 {
  input {
    String? name
    Boolean? verbose
    Int read_one
  }
  command <<<
    shigatyper read1 \
      ~{read_one} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    name: ""
    verbose: ""
    read_one: "read2"
  }
  output {
    File out_stdout = stdout()
  }
}