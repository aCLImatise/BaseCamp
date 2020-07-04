version 1.0

task GenomeBaser {
  input {
    Boolean? check_deps
    String genus
    String species
    String out_database_location
  }
  command <<<
    GenomeBaser \
      ~{genus} \
      ~{species} \
      ~{out_database_location} \
      ~{true="--check_deps" false="" check_deps}
  >>>
  parameter_meta {
    check_deps: "/ --no-check_deps  Check that non-python dependencies exist"
    genus: ""
    species: ""
    out_database_location: ""
  }
}