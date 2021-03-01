version 1.0

task Builderpl {
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
    builder_pl \
      ~{if (newick) then "--newick" else ""} \
      ~{if (dir) then "--dir" else ""} \
      ~{if (user_defined_name) then "--output" else ""} \
      ~{if (blacklist) then "--blacklist" else ""} \
      ~{if (word) then "--word" else ""} \
      ~{if (min) then "--min" else ""} \
      ~{if (greater) then "--greater" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (max) then "-max" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
  }
}