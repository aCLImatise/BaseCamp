version 1.0

task OutToChainpy {
  input {
    String? speciesnames_target_species
    String? chr_sizes
    File? output_file_default
    String? var_3
  }
  command <<<
    out_to_chain_py \
      ~{var_3} \
      ~{if defined(speciesnames_target_species) then ("--species " +  '"' + speciesnames_target_species + '"') else ""} \
      ~{if defined(chr_sizes) then ("--chrsizes " +  '"' + chr_sizes + '"') else ""} \
      ~{if defined(output_file_default) then ("--output " +  '"' + output_file_default + '"') else ""}
  >>>
  parameter_meta {
    speciesnames_target_species: "SPECIES\\nNames of target and query species (respectively) in\\nthe alignment. (default: ['homo_sapiens',\\n'mus_musculus'])"
    chr_sizes: "CHRSIZES\\nChromosome sizes for the given species. (default:\\nNone)"
    output_file_default: "Output file (default: stdout)"
    var_3: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}