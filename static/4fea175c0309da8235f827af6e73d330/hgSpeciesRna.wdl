version 1.0

task HgSpeciesRna {
  input {
    Boolean? est
    File? filter
    String database
    String genus
    String species
  }
  command <<<
    hgSpeciesRna \
      ~{database} \
      ~{genus} \
      ~{species} \
      ~{if (est) then "-est" else ""} \
      ~{if defined(filter) then ("-filter " +  '"' + filter + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    est: "- If set will get ESTs rather than mRNAs"
    filter: "- only read accessions listed in file"
    database: ""
    genus: ""
    species: ""
  }
  output {
    File out_stdout = stdout()
  }
}