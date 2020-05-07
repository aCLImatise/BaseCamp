class: CommandLineTool
id: phyluce_align_get_only_loci_with_min_taxa.cwl
inputs:
- id: alignments
  doc: 'The directory containing alignments to screen. (default: None)'
  type: string
  inputBinding:
    prefix: --alignments
- id: tax_a
  doc: 'The total number of taxa in all alignments. (default: None)'
  type: string
  inputBinding:
    prefix: --taxa
- id: output
  doc: 'The output dir in which to store copies of the alignments (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: percent
  doc: 'The percent of taxa to require (default: 0.75)'
  type: string
  inputBinding:
    prefix: --percent
- id: input_format
  doc: 'The input alignment format. (default: nexus)'
  type: string
  inputBinding:
    prefix: --input-format
- id: verbosity
  doc: 'The logging level to use. (default: INFO)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: 'The path to a directory to hold logs. (default: None)'
  type: string
  inputBinding:
    prefix: --log-path
- id: cores
  doc: 'Process alignments in parallel using --cores for alignment. This is the number
    of PHYSICAL CPUs. (default: 1)'
  type: string
  inputBinding:
    prefix: --cores
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_only_loci_with_min_taxa
