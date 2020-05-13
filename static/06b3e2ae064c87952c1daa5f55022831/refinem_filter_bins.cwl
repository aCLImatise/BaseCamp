class: CommandLineTool
id: refinem_filter_bins.cwl
inputs:
- id: genome_nt_dir
  doc: directory containing nucleotide scaffolds for each genome
  type: string
  inputBinding:
    position: 0
- id: filter_file
  doc: file specifying scaffolds to remove
  type: string
  inputBinding:
    position: 1
- id: output_dir
  doc: output directory
  type: string
  inputBinding:
    position: 2
- id: genome_ext
  doc: 'extension of genomes (other files in directory are ignored) (default: fna)'
  type: string
  inputBinding:
    prefix: --genome_ext
- id: modified_only
  doc: only copy modified bins to the output folder
  type: boolean
  inputBinding:
    prefix: --modified_only
- id: silent
  doc: suppress output of logger
  type: boolean
  inputBinding:
    prefix: --silent
outputs: []
cwlVersion: v1.1
baseCommand:
- refinem
- filter_bins
