version 1.0

task SerobaRunSerotyping {
  input {
    Boolean? no_clean
    String? coverage
    String databases
    String read_one
    String read_two
    String prefix
  }
  command <<<
    seroba runSerotyping \
      ~{databases} \
      ~{read_one} \
      ~{read_two} \
      ~{prefix} \
      ~{true="--noclean" false="" no_clean} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""}
  >>>
  parameter_meta {
    no_clean: "Do not clean up intermediate files (assemblies, ariba report)"
    coverage: "threshold for k-mer coverage of the reference sequence , default = 20"
    databases: "path to database directory"
    read_one: "forward read file"
    read_two: "backward read file"
    prefix: "unique prefix"
  }
}