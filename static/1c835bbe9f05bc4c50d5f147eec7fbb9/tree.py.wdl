version 1.0

task Treepy {
  input {
    Boolean? debug
    Int? nb_cpus
    File? input_otu
    File? biom_file
    File? out_tree
    File? html
    File? log_file
  }
  command <<<
    tree_py \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(nb_cpus) then ("--nb-cpus " +  '"' + nb_cpus + '"') else ""} \
      ~{if defined(input_otu) then ("--input-otu " +  '"' + input_otu + '"') else ""} \
      ~{if defined(biom_file) then ("--biomfile " +  '"' + biom_file + '"') else ""} \
      ~{if defined(out_tree) then ("--out-tree " +  '"' + out_tree + '"') else ""} \
      ~{if defined(html) then ("--html " +  '"' + html + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Keep temporary files to debug program."
    nb_cpus: "The maximum number of CPUs used. [Default: 1]"
    input_otu: "Path to input fasta file of OTU. Warning: FROGS Tree\\nis only working on less than 10000 sequences!"
    biom_file: "Path to the abundance biom file."
    out_tree: "Path to store resulting Newick tree file. [Default:\\ntree.nwk]"
    html: "Path to store resulting html file. [Default:\\nsummary.html]"
    log_file: "This output file will contain several information on\\nexecuted commands.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}