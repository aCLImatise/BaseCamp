version 1.0

task Gap2SeqCore {
  input {
    Boolean? length
    Boolean? arg_right_flank
    Boolean? arg_left_flank
    Boolean? rand_seed
    Boolean? unique
    Boolean? best_only
    Boolean? all_upper
    Boolean? max_mem
    Boolean? fuz
    Boolean? dist_error
    Boolean? filled
    Boolean? scaffolds
    Boolean? reads
    Boolean? solid
    Boolean? arg_kmer_length
    Boolean? nb_cores
    Boolean? verbose
    Boolean? version
  }
  command <<<
    Gap2Seq-core \
      ~{true="-length" false="" length} \
      ~{true="-right" false="" arg_right_flank} \
      ~{true="-left" false="" arg_left_flank} \
      ~{true="-randseed" false="" rand_seed} \
      ~{true="-unique" false="" unique} \
      ~{true="-best-only" false="" best_only} \
      ~{true="-all-upper" false="" all_upper} \
      ~{true="-max-mem" false="" max_mem} \
      ~{true="-fuz" false="" fuz} \
      ~{true="-dist-error" false="" dist_error} \
      ~{true="-filled" false="" filled} \
      ~{true="-scaffolds" false="" scaffolds} \
      ~{true="-reads" false="" reads} \
      ~{true="-solid" false="" solid} \
      ~{true="-k" false="" arg_kmer_length} \
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-version" false="" version}
  >>>
  parameter_meta {
    length: "(1 arg) :    Length of a single gap  [default '']"
    arg_right_flank: "(1 arg) :    Right flank of a single gap  [default '']"
    arg_left_flank: "(1 arg) :    Left flank of a single gap  [default '']"
    rand_seed: "(1 arg) :    Random seed (0 to use current time)  [default '0']"
    unique: "(0 arg) :    If specified, only gaps with a unique path of best length are filled."
    best_only: "(0 arg) :    If specified, only paths that have optimal length are considered."
    all_upper: "(0 arg) :    If specified, all filled bases are in upper case."
    max_mem: "(1 arg) :    Maximum memory usage of DP table computation in gigabytes (excluding DBG)  [default '20']"
    fuz: "(1 arg) :    Number of nucleotides to ignore on gap fringes  [default '10']"
    dist_error: "(1 arg) :    Maximum error in gap estimates  [default '500']"
    filled: "(1 arg) :    FASTA file of filled scaffolds"
    scaffolds: "(1 arg) :    FASTA/Q file of scaffolds  [default '']"
    reads: "(1 arg) :    FASTA/Q files of reads. For several files use a comma separated list."
    solid: "(1 arg) :    Threshold for solid k-mers  [default '2']"
    arg_kmer_length: "(1 arg) :    k-mer length  [default '31']"
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    version: "(0 arg) :    version"
  }
}