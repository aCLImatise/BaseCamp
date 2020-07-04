version 1.0

task Builder.pl {
  input {
    Boolean? newick
    Boolean? dir
    Boolean? user_defined_name
    Boolean? blacklist
    Boolean? word
    Boolean? min
    Boolean? greater
    Boolean? threads
    Boolean? max
  }
  command <<<
    builder.pl \
      ~{true="--newick" false="" newick} \
      ~{true="--dir" false="" dir} \
      ~{true="--output" false="" user_defined_name} \
      ~{true="--blacklist" false="" blacklist} \
      ~{true="--word" false="" word} \
      ~{true="--min" false="" min} \
      ~{true="--greater" false="" greater} \
      ~{true="--threads" false="" threads} \
      ~{true="-max" false="" max}
  >>>
  parameter_meta {
    newick: "- Guide tree in newick format (same names as fasta files without suffix .fna)"
    dir: "- Directory of fasta files (.fna)"
    user_defined_name: "- User defined database name"
    blacklist: "- .list file of k-mers unwanted in database (human, plasmids etc)"
    word: "- K-mer length used in database building and later searching (default 32)"
    min: "- Minimal amout of k-mers in node to be considered as subroot (default 250)"
    greater: "- Maximum times child could have more k-mers than parent (default 250)"
    threads: "- Number of cores used"
    max: "- Maximum number of k-mers in one list (default 100000)"
  }
}