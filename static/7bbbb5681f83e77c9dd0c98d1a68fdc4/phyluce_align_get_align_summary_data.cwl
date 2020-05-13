class: CommandLineTool
id: phyluce_align_get_align_summary_data.cwl
inputs:
- id: alignments
  doc: 'The directory containing alignments to be summarized. (default: None)'
  type: string
  inputBinding:
    prefix: --alignments
- id: input_format
  doc: 'The input alignment format. (default: nexus)'
  type: string
  inputBinding:
    prefix: --input-format
- id: show_tax_on_counts
  doc: 'Show the count of loci with X taxa. (default: False)'
  type: boolean
  inputBinding:
    prefix: --show-taxon-counts
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
- id: output_stats
  doc: 'Output a CSV-formatted file of stats, by locus (default: None)'
  type: string
  inputBinding:
    prefix: --output-stats
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_align_summary_data
