version 1.0

task Bufetpy {
  input {
    File? mirna
    File? interactions
    File? ontology
    File? synonyms
    Boolean? iterations
    File? path_output_file
    Boolean? processors
    Boolean? species
    Boolean? mi_free
    Boolean? mi_score
    Boolean? miranda
    Boolean? ens_go
    Boolean? disable_file_check
    Boolean? disable_interactions_check
    Boolean? disable_ontology_check
    Boolean? disable_synonyms_check
    String python
  }
  command <<<
    bufet_py \
      ~{python} \
      ~{if defined(mirna) then ("-miRNA " +  '"' + mirna + '"') else ""} \
      ~{if defined(interactions) then ("-interactions " +  '"' + interactions + '"') else ""} \
      ~{if defined(ontology) then ("-ontology " +  '"' + ontology + '"') else ""} \
      ~{if defined(synonyms) then ("-synonyms " +  '"' + synonyms + '"') else ""} \
      ~{if (iterations) then "-iterations" else ""} \
      ~{if defined(path_output_file) then ("-output " +  '"' + path_output_file + '"') else ""} \
      ~{if (processors) then "-processors" else ""} \
      ~{if (species) then "-species" else ""} \
      ~{if (mi_free) then "-miFree" else ""} \
      ~{if (mi_score) then "-miScore" else ""} \
      ~{if (miranda) then "--miRanda" else ""} \
      ~{if (ens_go) then "--ensGO" else ""} \
      ~{if (disable_file_check) then "--disable-file-check" else ""} \
      ~{if (disable_interactions_check) then "--disable-interactions-check" else ""} \
      ~{if (disable_ontology_check) then "--disable-ontology-check" else ""} \
      ~{if (disable_synonyms_check) then "--disable-synonyms-check" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mirna: ": path to the miRNA group file"
    interactions: ">: path to the interactions file"
    ontology: ": path to the ontology file"
    synonyms: ": path to the synonyms file"
    iterations: ": number of random permutations"
    path_output_file: ": path to the output file (overwritten if it exists)"
    processors: ": number of threads to use for calculations"
    species: ": \\\"human\\\" or \\\"mouse\\\""
    mi_free: ": miRanda free energy (valid only if the --miRanda flag is invoked)"
    mi_score: ": miRanda free energy (valid only if the --miRanda flag is invoked)"
    miranda: ": use interactions file from miRanda run"
    ens_go: ": use ontology file downloaded from Ensembl"
    disable_file_check: ": (quicker but not recommended) disable all file validations."
    disable_interactions_check: ": (quicker but not recommended) disable existence and file format validation for the interactions file."
    disable_ontology_check: ": (quicker but not recommended) disable existence and file format validation for the ontology file."
    disable_synonyms_check: ": (quicker but not recommended) disable existence and file format validation for the synonyms file."
    python: ""
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
  }
}