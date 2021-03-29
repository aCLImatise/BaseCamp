version 1.0

task SerobaRunSerotyping {
  input {
    Boolean? no_clean
    Int? coverage
    String databases
    Int read_one
    Int read_two
    String prefix
  }
  command <<<
    seroba runSerotyping \
      ~{databases} \
      ~{read_one} \
      ~{read_two} \
      ~{prefix} \
      ~{if (no_clean) then "--noclean" else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seroba:1.0.2--py_0"
  }
  parameter_meta {
    no_clean: "Do not clean up intermediate files (assemblies, ariba\\nreport)"
    coverage: "threshold for k-mer coverage of the reference sequence\\n, default = 20\\n"
    databases: "path to database directory"
    read_one: "forward read file"
    read_two: "backward read file"
    prefix: "unique prefix"
  }
  output {
    File out_stdout = stdout()
  }
}