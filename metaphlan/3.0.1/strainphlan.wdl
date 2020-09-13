version 1.0

task Strainphlan {
  input {
    Float? database
    File? clade_markers
    Array[String] samples
    Array[String] references
    String? clade
    Directory? output_dir
    Int? nprocs
    Array[String] secondary_samples
    Array[String] secondary_references
    Int? trim_sequences
    Int? marker_in_n_samples
    Int? sample_with_n_markers
    Int? secondary_sample_with_n_markers
    String? phylo_phl_an_mode
    File? phylo_phl_an_configuration
    Boolean? mutation_rates
    Boolean? print_clades_only
  }
  command <<<
    strainphlan \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(clade_markers) then ("--clade_markers " +  '"' + clade_markers + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(references) then ("--references " +  '"' + references + '"') else ""} \
      ~{if defined(clade) then ("--clade " +  '"' + clade + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(nprocs) then ("--nprocs " +  '"' + nprocs + '"') else ""} \
      ~{if defined(secondary_samples) then ("--secondary_samples " +  '"' + secondary_samples + '"') else ""} \
      ~{if defined(secondary_references) then ("--secondary_references " +  '"' + secondary_references + '"') else ""} \
      ~{if defined(trim_sequences) then ("--trim_sequences " +  '"' + trim_sequences + '"') else ""} \
      ~{if defined(marker_in_n_samples) then ("--marker_in_n_samples " +  '"' + marker_in_n_samples + '"') else ""} \
      ~{if defined(sample_with_n_markers) then ("--sample_with_n_markers " +  '"' + sample_with_n_markers + '"') else ""} \
      ~{if defined(secondary_sample_with_n_markers) then ("--secondary_sample_with_n_markers " +  '"' + secondary_sample_with_n_markers + '"') else ""} \
      ~{if defined(phylo_phl_an_mode) then ("--phylophlan_mode " +  '"' + phylo_phl_an_mode + '"') else ""} \
      ~{if defined(phylo_phl_an_configuration) then ("--phylophlan_configuration " +  '"' + phylo_phl_an_configuration + '"') else ""} \
      ~{if (mutation_rates) then "--mutation_rates" else ""} \
      ~{if (print_clades_only) then "--print_clades_only" else ""}
  >>>
  parameter_meta {
    database: "The input MetaPhlAn 3.0 database"
    clade_markers: "The clade markers as FASTA file"
    samples: "The reconstructed markers for each sample"
    references: "The reference genomes"
    clade: "The clade to investigate"
    output_dir: "The output directory"
    nprocs: "The number of threads to use"
    secondary_samples: "The reconstructed markers for each secondary sample"
    secondary_references: "The secondary reference genomes"
    trim_sequences: "The number of bases to remove from both ends when\\ntrimming markers. Default 50"
    marker_in_n_samples: "Theshold defining the minimum percentage of samples to\\nkeep a marker. Default 80 (%)"
    sample_with_n_markers: "Threshold defining the minimun number of markers to\\nkeep a sample. Default 20"
    secondary_sample_with_n_markers: "Threshold defining the minimun number of markers to\\nkeep a secondary sample. Default 20"
    phylo_phl_an_mode: "The precision of the phylogenetic analysis {fast,\\nnormal [default], accurate}"
    phylo_phl_an_configuration: "The PhyloPhlAn configuration file"
    mutation_rates: "If specified will produced a mutation rates table for\\neach of the aligned markers and a summary table for\\nthe concatenated MSA. This operation can take long\\ntime to finish"
    print_clades_only: "If specified only print the potential clades and stop\\nwithout building any tree\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}