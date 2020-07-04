version 1.0

task HgSpeciesRna {
  input {
    Boolean? est
    File? filter
    String database
    String genus
    String species
    String output_dot_fa
  }
  command <<<
    hgSpeciesRna \
      ~{database} \
      ~{genus} \
      ~{species} \
      ~{output_dot_fa} \
      ~{true="-est" false="" est} \
      ~{if defined(filter) then ("-filter " +  '"' + filter + '"') else ""}
  >>>
  parameter_meta {
    est: "- If set will get ESTs rather than mRNAs"
    filter: "- only read accessions listed in file"
    database: ""
    genus: ""
    species: ""
    output_dot_fa: ""
  }
}