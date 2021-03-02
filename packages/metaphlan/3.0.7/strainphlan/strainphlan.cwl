class: CommandLineTool
id: strainphlan.cwl
inputs:
- id: in_database
  doc: "The input MetaPhlAn 3.0 database (default:\n/usr/local/lib/python3.8/site-packages/metaphlan/metap\n\
    hlan_databases/mpa_v30_CHOCOPhlAn_201901.pkl)"
  type: double?
  inputBinding:
    prefix: --database
- id: in_clade_markers
  doc: 'The clade markers as FASTA file (default: None)'
  type: File?
  inputBinding:
    prefix: --clade_markers
- id: in_samples
  doc: "The reconstructed markers for each sample (default:\n[])"
  type: string[]
  inputBinding:
    prefix: --samples
- id: in_references
  doc: 'The reference genomes (default: [])'
  type: string[]
  inputBinding:
    prefix: --references
- id: in_clade
  doc: 'The clade to investigate (default: None)'
  type: string?
  inputBinding:
    prefix: --clade
- id: in_output_dir
  doc: 'The output directory (default: None)'
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_nprocs
  doc: 'The number of threads to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --nprocs
- id: in_secondary_samples
  doc: "The reconstructed markers for each secondary sample\n(default: [])"
  type: string[]
  inputBinding:
    prefix: --secondary_samples
- id: in_secondary_references
  doc: 'The secondary reference genomes (default: [])'
  type: string[]
  inputBinding:
    prefix: --secondary_references
- id: in_trim_sequences
  doc: "The number of bases to remove from both ends when\ntrimming markers (default:\
    \ 50)"
  type: long?
  inputBinding:
    prefix: --trim_sequences
- id: in_marker_in_n_samples
  doc: "Theshold defining the minimum percentage of samples to\nkeep a marker (default:\
    \ 80)"
  type: long?
  inputBinding:
    prefix: --marker_in_n_samples
- id: in_sample_with_n_markers
  doc: "Threshold defining the minimun number of markers to\nkeep a sample (default:\
    \ 20)"
  type: long?
  inputBinding:
    prefix: --sample_with_n_markers
- id: in_secondary_sample_with_n_markers
  doc: "Threshold defining the minimun number of markers to\nkeep a secondary sample\
    \ (default: 20)"
  type: long?
  inputBinding:
    prefix: --secondary_sample_with_n_markers
- id: in_phylo_phl_an_mode
  doc: "The presets for fast or accurate phylogenetic analysis\n(default: accurate)"
  type: string?
  inputBinding:
    prefix: --phylophlan_mode
- id: in_phylo_phl_an_configuration
  doc: 'The PhyloPhlAn configuration file (default: None)'
  type: File?
  inputBinding:
    prefix: --phylophlan_configuration
- id: in_mutation_rates
  doc: "If specified will produced a mutation rates table for\neach of the aligned\
    \ markers and a summary table for\nthe concatenated MSA. This operation can take\
    \ long\ntime to finish (default: False)"
  type: boolean?
  inputBinding:
    prefix: --mutation_rates
- id: in_print_clades_only
  doc: "If specified only print the potential clades and stop\nwithout building any\
    \ tree (default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --print_clades_only
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'The output directory (default: None)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metaphlan:3.0.7--pyh7b7c402_0
cwlVersion: v1.1
baseCommand:
- strainphlan
