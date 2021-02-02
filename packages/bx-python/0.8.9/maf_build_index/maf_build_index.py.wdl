version 1.0

task MafBuildIndexpy {
  input {
    String? species
    String maf_file
    String index_file
  }
  command <<<
    maf_build_index_py \
      ~{maf_file} \
      ~{index_file} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    species: "only index the position of the block in the listed\\nspecies\\n"
    maf_file: ""
    index_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}