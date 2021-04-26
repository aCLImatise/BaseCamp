version 1.0

task AugurTitersSub {
  input {
    Array[String] titers
    Array[String] alignment
    Array[String] gene_names
    String? tree
    Boolean? allow_empty_model
    File? json_file_save
  }
  command <<<
    augur titers sub \
      ~{if defined(titers) then ("--titers " +  '"' + titers + '"') else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(gene_names) then ("--gene-names " +  '"' + gene_names + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if (allow_empty_model) then "--allow-empty-model" else ""} \
      ~{if defined(json_file_save) then ("--output " +  '"' + json_file_save + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augur:12.0.0--pyhdfd78af_0"
  }
  parameter_meta {
    titers: "file with titer measurements"
    alignment: "sequence to be used in the substitution model,\\nsupplied as fasta files"
    gene_names: "names of the sequences in the alignment, same order\\nassumed"
    tree: "optional tree to annotate fit titer model to"
    allow_empty_model: "allow model to be empty"
    json_file_save: "JSON file to save titer model\\n"
  }
  output {
    File out_stdout = stdout()
  }
}