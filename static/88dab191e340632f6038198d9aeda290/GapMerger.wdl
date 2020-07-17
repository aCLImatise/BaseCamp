version 1.0

task GapMerger {
  input {
    Boolean? gaps
    Boolean? contigs
    Boolean? scaffolds
    Boolean? nb_cores
    Boolean? verbose
    Boolean? version
  }
  command <<<
    GapMerger \
      ~{true="-gaps" false="" gaps} \
      ~{true="-contigs" false="" contigs} \
      ~{true="-scaffolds" false="" scaffolds} \
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-version" false="" version}
  >>>
  parameter_meta {
    gaps: "(1 arg) :    FASTA file of filled gaps"
    contigs: "(1 arg) :    FASTA file of contigs"
    scaffolds: "(1 arg) :    FASTA file of merged scaffolds"
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    version: "(0 arg) :    version"
  }
}