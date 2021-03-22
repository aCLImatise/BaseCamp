version 1.0

task PhylocsfBuildtracks {
  input {
    Boolean? output_phylo
    Boolean? output_raw_phylo
    Float? power_threshold
    Int? genome_length
    File? coding_exons
    Int? threads
    Directory? directory_where_written
    File? mapping
    String? species
    Int? model_info
    String phylo_csf
  }
  command <<<
    phylocsf__ build_tracks \
      ~{phylo_csf} \
      ~{if defined(output_phylo) then ("--output-phylo " +  '"' + output_phylo + '"') else ""} \
      ~{if defined(output_raw_phylo) then ("--output-raw-phylo " +  '"' + output_raw_phylo + '"') else ""} \
      ~{if defined(power_threshold) then ("--power-threshold " +  '"' + power_threshold + '"') else ""} \
      ~{if defined(genome_length) then ("--genome-length " +  '"' + genome_length + '"') else ""} \
      ~{if defined(coding_exons) then ("--coding-exons " +  '"' + coding_exons + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(directory_where_written) then ("--output " +  '"' + directory_where_written + '"') else ""} \
      ~{if defined(mapping) then ("--mapping " +  '"' + mapping + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(model_info) then ("--model-info " +  '"' + model_info + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phylocsfpp:1.0.0_f5ab2559--hdd86bf5_0"
  }
  parameter_meta {
    output_phylo: "Compute all 6 smoothened PhyloCSF tracks. Requires coding\\nexon coordinates and genome length. Default: 0"
    output_raw_phylo: "Compute all 6 unsmoothened PhyloCSF tracks. Default: 1"
    power_threshold: "Minimum confidence score to output PhyloCSF score.\\nDefault: 0.1"
    genome_length: "Total genome length (needed for --output-phylo)."
    coding_exons: "BED-like file (chrom name, strand, phase, start, end) with\\ncoordinates of coding exons (needed for --output-phylo)."
    threads: "Parallelize scoring of multiple MSAs in a file using\\nmultiple threads. Default: 2"
    directory_where_written: "Directory where tracks in wig format will be written to.\\nIf it does not exist, it will be created. Default: output\\nfiles are stored next to the input files."
    mapping: "If the MSAs don't use common species names (like Human,\\nChimp, etc.) you can pass a two-column tsv file with a\\nname mapping."
    species: "Comma separated list of species to reduce <model> to a\\nsubset of species to improve running time, e.g.,\\n\\\"Human,Chimp,Seaturtle\\\""
    model_info: "Output the organisms included in a specific model.\\nIncluded models are: 21mosquitoes, 58mammals, 7yeast,\\n29mammals, 53birds, 49birds, 100vertebrates, 23flies,\\n12flies, 26worms, 20flies.\\n"
    phylo_csf: ""
  }
  output {
    File out_stdout = stdout()
    File out_coding_exons = "${in_coding_exons}"
  }
}