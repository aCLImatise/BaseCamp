version 1.0

task KmerInShort {
  input {
    Boolean? nb_cores
    Boolean? verbose
    Boolean? file
    Boolean? km_er_size
    File? out
    Boolean? offset
    Boolean? step
    Boolean? kval
    Boolean? dont_reverse
    Boolean? freq
    File? per_seq
  }
  command <<<
    KmerInShort \
      ~{if (nb_cores) then "-nb-cores" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (file) then "-file" else ""} \
      ~{if (km_er_size) then "-kmer-size" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (offset) then "-offset" else ""} \
      ~{if (step) then "-step" else ""} \
      ~{if (kval) then "-kval" else ""} \
      ~{if (dont_reverse) then "-dont-reverse" else ""} \
      ~{if (freq) then "-freq" else ""} \
      ~{if (per_seq) then "-perSeq" else ""}
  >>>
  parameter_meta {
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    file: "(1 arg) :    input file"
    km_er_size: "(1 arg) :    ksize"
    out: "(1 arg) :    output file  [default '']"
    offset: "(1 arg) :    starting offset  [default '0']"
    step: "(1 arg) :    step  [default '1']"
    kval: "(1 arg) :    file with kmer values   [default '']"
    dont_reverse: "(0 arg) :    do not reverse kmers, count forward and reverse complement separately"
    freq: "(0 arg) :    output frequency"
    per_seq: "(0 arg) :    one output file and count per fasta sequence"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_per_seq = "${in_per_seq}"
  }
}