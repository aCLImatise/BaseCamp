version 1.0

task Ncbitk {
  input {
    Boolean? status
    String genbank
    String? species
  }
  command <<<
    ncbitk \
      ~{genbank} \
      ~{species} \
      ~{true="--status" false="" status}
  >>>
  parameter_meta {
    status: "Show the current status of your genome collection"
    genbank: ""
    species: ""
  }
}