version 1.0

task KmerInShort {
  input {
    Boolean? nb_cores
    Boolean? verbose
    Boolean? file
    Boolean? km_er_size
    Boolean? out
    Boolean? offset
    Boolean? step
    Boolean? kval
    Boolean? dont_reverse
    Boolean? freq
    Boolean? per_seq
  }
  command <<<
    KmerInShort \
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-file" false="" file} \
      ~{true="-kmer-size" false="" km_er_size} \
      ~{true="-out" false="" out} \
      ~{true="-offset" false="" offset} \
      ~{true="-step" false="" step} \
      ~{true="-kval" false="" kval} \
      ~{true="-dont-reverse" false="" dont_reverse} \
      ~{true="-freq" false="" freq} \
      ~{true="-perSeq" false="" per_seq}
  >>>
  parameter_meta {
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    file: "(1 arg) :    input file "
    km_er_size: "(1 arg) :    ksize"
    out: "(1 arg) :    output file  [default '']"
    offset: "(1 arg) :    starting offset  [default '0']"
    step: "(1 arg) :    step  [default '1']"
    kval: "(1 arg) :    file with kmer values   [default '']"
    dont_reverse: "(0 arg) :    do not reverse kmers, count forward and reverse complement separately"
    freq: "(0 arg) :    output frequency"
    per_seq: "(0 arg) :    one output file and count per fasta sequence"
  }
}