class: CommandLineTool
id: strainphlan.cwl
inputs:
- id: database
  doc: The input MetaPhlAn 3.0 database
  type: string
  inputBinding:
    prefix: --database
- id: clade_markers
  doc: The clade markers as FASTA file
  type: string
  inputBinding:
    prefix: --clade_markers
- id: samples
  doc: The reconstructed markers for each sample
  type: string[]
  inputBinding:
    prefix: --samples
- id: references
  doc: The reference genomes
  type: string[]
  inputBinding:
    prefix: --references
- id: clade
  doc: The clade to investigate
  type: string
  inputBinding:
    prefix: --clade
- id: output_dir
  doc: The output directory
  type: string
  inputBinding:
    prefix: --output_dir
- id: nprocs
  doc: The number of threads to use
  type: string
  inputBinding:
    prefix: --nprocs
- id: secondary_samples
  doc: The reconstructed markers for each secondary sample
  type: string[]
  inputBinding:
    prefix: --secondary_samples
- id: secondary_references
  doc: The secondary reference genomes
  type: string[]
  inputBinding:
    prefix: --secondary_references
- id: trim_sequences
  doc: The number of bases to remove from both ends when trimming markers. Default
    50
  type: string
  inputBinding:
    prefix: --trim_sequences
- id: marker_in_n_samples
  doc: Theshold defining the minimum percentage of samples to keep a marker. Default
    80 (%)
  type: string
  inputBinding:
    prefix: --marker_in_n_samples
- id: sample_with_n_markers
  doc: Threshold defining the minimun number of markers to keep a sample. Default
    20
  type: string
  inputBinding:
    prefix: --sample_with_n_markers
- id: secondary_sample_with_n_markers
  doc: Threshold defining the minimun number of markers to keep a secondary sample.
    Default 20
  type: string
  inputBinding:
    prefix: --secondary_sample_with_n_markers
- id: phylo_phl_an_mode
  doc: The precision of the phylogenetic analysis {fast, normal [default], accurate}
  type: string
  inputBinding:
    prefix: --phylophlan_mode
- id: phylo_phl_an_configuration
  doc: The PhyloPhlAn configuration file
  type: string
  inputBinding:
    prefix: --phylophlan_configuration
- id: mutation_rates
  doc: If specified will produced a mutation rates table for each of the aligned markers
    and a summary table for the concatenated MSA. This operation can take long time
    to finish
  type: boolean
  inputBinding:
    prefix: --mutation_rates
- id: print_clades_only
  doc: If specified only print the potential clades and stop without building any
    tree
  type: boolean
  inputBinding:
    prefix: --print_clades_only
outputs: []
cwlVersion: v1.1
baseCommand:
- strainphlan
