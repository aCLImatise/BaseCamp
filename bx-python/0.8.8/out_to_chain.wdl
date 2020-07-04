version 1.0

task OutToChain.py {
  input {
    String? species
    String? chr_sizes
    File? output_file_default
    String file_to_process
  }
  command <<<
    out_to_chain.py \
      ~{file_to_process} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(chr_sizes) then ("--chrsizes " +  '"' + chr_sizes + '"') else ""} \
      ~{if defined(output_file_default) then ("--output " +  '"' + output_file_default + '"') else ""}
  >>>
  parameter_meta {
    species: "SPECIES Names of target and query species (respectively) in the alignment. (default: ['homo_sapiens', 'mus_musculus'])"
    chr_sizes: "CHRSIZES Chromosome sizes for the given species. (default: None)"
    output_file_default: "Output file (default: stdout)"
    file_to_process: "File to process."
  }
}