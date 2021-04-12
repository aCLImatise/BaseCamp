version 1.0

task Treepy {
  input {
    Boolean? debug
    Int? nb_cpus
    File? input_sequences
    File? biom_file
    File? out_tree
    File? html
    File? log_file
    Boolean? v
  }
  command <<<
    tree_py \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(nb_cpus) then ("--nb-cpus " +  '"' + nb_cpus + '"') else ""} \
      ~{if defined(input_sequences) then ("--input-sequences " +  '"' + input_sequences + '"') else ""} \
      ~{if defined(biom_file) then ("--biom-file " +  '"' + biom_file + '"') else ""} \
      ~{if defined(out_tree) then ("--out-tree " +  '"' + out_tree + '"') else ""} \
      ~{if defined(html) then ("--html " +  '"' + html + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.2--py37_0"
  }
  parameter_meta {
    debug: "Keep temporary files to debug program."
    nb_cpus: "The maximum number of CPUs used. [Default: 1]"
    input_sequences: "Path to input FASTA file of OTU seed sequences.\\nWarning: FROGS Tree is only working on less than 10000\\nsequences!"
    biom_file: "Path to the abundance BIOM file."
    out_tree: "Path to store resulting Newick tree file. (format:\\nnwk) [Default: tree.nwk]"
    html: "The HTML file containing the graphs. [Default:\\ntree.html]"
    log_file: "This output file will contain several informations on\\nexecuted commands.\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}