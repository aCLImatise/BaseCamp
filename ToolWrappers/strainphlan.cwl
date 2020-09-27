class: CommandLineTool
id: strainphlan.cwl
inputs:
- id: in_database
  doc: The input MetaPhlAn 3.0 database
  type: double
  inputBinding:
    prefix: --database
- id: in_clade_markers
  doc: The clade markers as FASTA file
  type: File
  inputBinding:
    prefix: --clade_markers
- id: in_samples
  doc: The reconstructed markers for each sample
  type: string[]
  inputBinding:
    prefix: --samples
- id: in_references
  doc: The reference genomes
  type: string[]
  inputBinding:
    prefix: --references
- id: in_clade
  doc: The clade to investigate
  type: string
  inputBinding:
    prefix: --clade
- id: in_output_dir
  doc: The output directory
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_nprocs
  doc: The number of threads to use
  type: long
  inputBinding:
    prefix: --nprocs
- id: in_secondary_samples
  doc: The reconstructed markers for each secondary sample
  type: string[]
  inputBinding:
    prefix: --secondary_samples
- id: in_secondary_references
  doc: The secondary reference genomes
  type: string[]
  inputBinding:
    prefix: --secondary_references
- id: in_trim_sequences
  doc: "The number of bases to remove from both ends when\ntrimming markers. Default\
    \ 50"
  type: long
  inputBinding:
    prefix: --trim_sequences
- id: in_marker_in_n_samples
  doc: "Theshold defining the minimum percentage of samples to\nkeep a marker. Default\
    \ 80 (%)"
  type: long
  inputBinding:
    prefix: --marker_in_n_samples
- id: in_sample_with_n_markers
  doc: "Threshold defining the minimun number of markers to\nkeep a sample. Default\
    \ 20"
  type: long
  inputBinding:
    prefix: --sample_with_n_markers
- id: in_secondary_sample_with_n_markers
  doc: "Threshold defining the minimun number of markers to\nkeep a secondary sample.\
    \ Default 20"
  type: long
  inputBinding:
    prefix: --secondary_sample_with_n_markers
- id: in_phylo_phl_an_mode
  doc: "The precision of the phylogenetic analysis {fast,\nnormal [default], accurate}"
  type: string
  inputBinding:
    prefix: --phylophlan_mode
- id: in_phylo_phl_an_configuration
  doc: The PhyloPhlAn configuration file
  type: File
  inputBinding:
    prefix: --phylophlan_configuration
- id: in_mutation_rates
  doc: "If specified will produced a mutation rates table for\neach of the aligned\
    \ markers and a summary table for\nthe concatenated MSA. This operation can take\
    \ long\ntime to finish"
  type: boolean
  inputBinding:
    prefix: --mutation_rates
- id: in_print_clades_only
  doc: "If specified only print the potential clades and stop\nwithout building any\
    \ tree\n"
  type: boolean
  inputBinding:
    prefix: --print_clades_only
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: The output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- strainphlan
