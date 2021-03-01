version 1.0

task ForceOneClusterPerPairMempy {
  input {
    File? master_assembled_file
    String? stub_fr_output
    Int? amount_use_default
    Int? maximum_intrachromosomal_distance
  }
  command <<<
    forceOneClusterPerPairMem_py \
      ~{if defined(master_assembled_file) then ("-i " +  '"' + master_assembled_file + '"') else ""} \
      ~{if defined(stub_fr_output) then ("-o " +  '"' + stub_fr_output + '"') else ""} \
      ~{if defined(amount_use_default) then ("-m " +  '"' + amount_use_default + '"') else ""} \
      ~{if defined(maximum_intrachromosomal_distance) then ("-d " +  '"' + maximum_intrachromosomal_distance + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0"
  }
  parameter_meta {
    master_assembled_file: "Master assembled cluster file"
    stub_fr_output: "Stub fr output files"
    amount_use_default: "The amount of memory to use for UNIX sort.  Default = 2G.  See\\n\\\"man sort\\\" for valid values."
    maximum_intrachromosomal_distance: "Maximum intrachromosomal distance allowed before a variant is\\nconsidered to be between unlinked DNA segments.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}