version 1.0

task AddModel.py {
  input {
    String n
    String sequence_file
    String domain
    String phylum
    String class
    String order
    String family
    String genus
    String species
    String strain
  }
  command <<<
    AddModel.py \
      ~{n} \
      ~{sequence_file} \
      ~{domain} \
      ~{phylum} \
      ~{class} \
      ~{order} \
      ~{family} \
      ~{genus} \
      ~{species} \
      ~{strain}
  >>>
  parameter_meta {
    n: ""
    sequence_file: ""
    domain: ""
    phylum: ""
    class: ""
    order: ""
    family: ""
    genus: ""
    species: ""
    strain: ""
  }
}