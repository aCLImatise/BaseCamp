version 1.0

task ShigatyperRead1 {
  input {
    Boolean? verbose
    String? n
    Int read_one
  }
  command <<<
    shigatyper read1 \
      ~{read_one} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    verbose: ""
    n: ""
    read_one: "read2"
  }
  output {
    File out_stdout = stdout()
  }
}