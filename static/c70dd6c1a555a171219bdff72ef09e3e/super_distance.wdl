version 1.0

task SuperDistance {
  input {
    Boolean? fast
    Int? epsilon
    File? species
    File? output_file_species
  }
  command <<<
    super_distance \
      ~{if (fast) then "--fast" else ""} \
      ~{if defined(epsilon) then ("--epsilon " +  '"' + epsilon + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(output_file_species) then ("--output " +  '"' + output_file_species + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast: "for too many leaves, estimates only two species trees"
    epsilon: "tolerance (small value below which a branch length is considered zero for nodal distances)"
    species: "file with species names, one per line (comments in square braces allowed); if absent, orthology is assumed"
    output_file_species: "output file with species supertrees, in newick format (default '-')"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_species = "${in_output_file_species}"
  }
}