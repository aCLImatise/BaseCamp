version 1.0

task MafBuildIndex.py {
  input {
    String? species
    String maf_file
    String index_file
  }
  command <<<
    maf_build_index.py \
      ~{maf_file} \
      ~{index_file} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    species: "only index the position of the block in the listed species"
    maf_file: ""
    index_file: ""
  }
}