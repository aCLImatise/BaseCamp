class: CommandLineTool
id: phyluce_align_filter_alignments.cwl
inputs:
- id: alignments
  doc: The directory containing the alignment files
  type: string
  inputBinding:
    prefix: --alignments
- id: output
  doc: The directory to write alignments meeting criteria.
  type: string
  inputBinding:
    prefix: --output
- id: input_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --input-format
- id: containing_data_for
  doc: Output only alignments --containing-data-for a taxon
  type: string[]
  inputBinding:
    prefix: --containing-data-for
- id: min_length
  doc: Filter out alignments shorter than --min-length
  type: long
  inputBinding:
    prefix: --min-length
- id: min_tax_a
  doc: Filter out alignments with fewer than --min-taxa
  type: long
  inputBinding:
    prefix: --min-taxa
- id: verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: The path to a directory to hold logs.
  type: string
  inputBinding:
    prefix: --log-path
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_filter_alignments
