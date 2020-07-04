version 1.0

task PpaniniPress {
  input {
    String? gene_path
    String? path_for_outputs
    Boolean? resume
    String? threads
    String? scale
    String? memory
  }
  command <<<
    ppanini_press \
      ~{if defined(gene_path) then ("--gene-path " +  '"' + gene_path + '"') else ""} \
      ~{if defined(path_for_outputs) then ("--output " +  '"' + path_for_outputs + '"') else ""} \
      ~{true="--resume" false="" resume} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""}
  >>>
  parameter_meta {
    gene_path: "a directory path to ppanini_gene_caller outputs which includes txt, gff, and faa files for each sample."
    path_for_outputs: "Path for outputs"
    resume: "bypass commands if the output files exist"
    threads: "number of threads/processes [DEFAULT: 1]"
    scale: "scale the abundance table"
    memory: "memory for -M option in CD-Hit "
  }
}