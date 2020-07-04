version 1.0

task Bufet.py {
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
  }
  command <<<
    bufet.py \
      ~{if defined(mirna) then ("-miRNA " +  '"' + mirna + '"') else ""} \
      ~{if defined(interactions) then ("-interactions " +  '"' + interactions + '"') else ""} \
      ~{if defined(ontology) then ("-ontology " +  '"' + ontology + '"') else ""} \
      ~{if defined(synonyms) then ("-synonyms " +  '"' + synonyms + '"') else ""} \
      ~{true="-iterations" false="" iterations} \
      ~{if defined(path_output_file) then ("-output " +  '"' + path_output_file + '"') else ""} \
      ~{true="-processors" false="" processors} \
      ~{true="-species" false="" species} \
      ~{true="-miFree" false="" mi_free} \
      ~{true="-miScore" false="" mi_score} \
      ~{true="--miRanda" false="" miranda} \
      ~{true="--ensGO" false="" ens_go} \
      ~{true="--disable-file-check" false="" disable_file_check} \
      ~{true="--disable-interactions-check" false="" disable_interactions_check} \
      ~{true="--disable-ontology-check" false="" disable_ontology_check} \
      ~{true="--disable-synonyms-check" false="" disable_synonyms_check}
  >>>
  parameter_meta {
    mirna: ": path to the miRNA group file"
    interactions: ">: path to the interactions file"
    ontology: ": path to the ontology file"
    synonyms: ": path to the synonyms file"
    iterations: ": number of random permutations"
    path_output_file: ": path to the output file (overwritten if it exists)"
    processors: ": number of threads to use for calculations"
    species: ": \"human\" or \"mouse\""
    mi_free: ": miRanda free energy (valid only if the --miRanda flag is invoked)"
    mi_score: ": miRanda free energy (valid only if the --miRanda flag is invoked)"
    miranda: ": use interactions file from miRanda run"
    ens_go: ": use ontology file downloaded from Ensembl"
    disable_file_check: ": (quicker but not recommended) disable all file validations."
    disable_interactions_check: ": (quicker but not recommended) disable existence and file format validation for the interactions file."
    disable_ontology_check: ": (quicker but not recommended) disable existence and file format validation for the ontology file."
    disable_synonyms_check: ": (quicker but not recommended) disable existence and file format validation for the synonyms file."
  }
}