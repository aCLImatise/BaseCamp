version 1.0

task AddModelpy {
  input {
    String n
    File sequence_file
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
    AddModel_py \
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
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
  }
}