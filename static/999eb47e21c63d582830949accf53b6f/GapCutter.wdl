version 1.0

task GapCutter {
  input {
    Boolean? no_split
    Boolean? mask
    Boolean? arg_kmer_length
    Boolean? fuz
    Boolean? bed
    Boolean? gaps
    Boolean? contigs
    Boolean? scaffolds
    Boolean? nb_cores
    Boolean? verbose
    Boolean? version
  }
  command <<<
    GapCutter \
      ~{true="-no-split" false="" no_split} \
      ~{true="-mask" false="" mask} \
      ~{true="-k" false="" arg_kmer_length} \
      ~{true="-fuz" false="" fuz} \
      ~{true="-bed" false="" bed} \
      ~{true="-gaps" false="" gaps} \
      ~{true="-contigs" false="" contigs} \
      ~{true="-scaffolds" false="" scaffolds} \
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-version" false="" version}
  >>>
  parameter_meta {
    no_split: "(0 arg) :    Don't split flank sharing gaps"
    mask: "(0 arg) :    Mask sequences too short to use"
    arg_kmer_length: "(1 arg) :    k-mer length  [default '31']"
    fuz: "(1 arg) :    Maximum number of nucleotides to ignore on gap fringes  [default '10']"
    bed: "(1 arg) :    BED file for gaps"
    gaps: "(1 arg) :    FASTA file of gaps"
    contigs: "(1 arg) :    FASTA file of contigs"
    scaffolds: "(1 arg) :    FASTA/Q file of scaffolds"
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    version: "(0 arg) :    version"
  }
}