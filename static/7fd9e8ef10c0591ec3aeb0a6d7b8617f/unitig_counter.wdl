version 1.0

task UnitigCounter {
  input {
    Boolean? gzip
    Boolean? strains
    Boolean? arg_kmer_size
    Boolean? arg_path_folder
    Boolean? nb_cores
    Boolean? verbose
    Boolean? version
  }
  command <<<
    unitig-counter \
      ~{true="-gzip" false="" gzip} \
      ~{true="-strains" false="" strains} \
      ~{true="-k" false="" arg_kmer_size} \
      ~{true="-output" false="" arg_path_folder} \
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-version" false="" version}
  >>>
  parameter_meta {
    gzip: "(0 arg) :    Compress unitig output using gzip."
    strains: "(1 arg) :    A text file describing the strains containing 2 columns: 1) ID of the strain; 2) Path to a multi-fasta file containing the sequences of the strain. This file needs a header."
    arg_kmer_size: "(1 arg) :    K-mer size.  [default '31']"
    arg_path_folder: "(1 arg) :    Path to the folder where the final and temporary files will be stored.  [default 'output']"
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    version: "(0 arg) :    version"
  }
}