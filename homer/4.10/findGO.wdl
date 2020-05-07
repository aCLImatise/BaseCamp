version 1.0

task FindGO.pl {
  input {
    Boolean cpuCpu
    Boolean humanHuman
    Boolean customCustomId
    File ontologyOntology
  }
  command <<<
    findGO.pl \
      ~{true="-cpu" false="" cpuCpu} \
      ~{true="-human" false="" humanHuman} \
      ~{true="-customID" false="" customCustomId} \
      ~{if defined(ontologyOntology) then ("-ontology " +  '"' + ontologyOntology + '"') else ""}
  >>>
}