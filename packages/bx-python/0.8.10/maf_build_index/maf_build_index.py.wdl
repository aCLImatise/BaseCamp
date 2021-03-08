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
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0"
  }
  parameter_meta {
    species: "only index the position of the block in the listed\\nspecies\\n"
    maf_file: ""
    index_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}