class: CommandLineTool
id: phyluce_align_filter_alignments.cwl
inputs:
- id: in_alignments
  doc: The directory containing the alignment files
  type: Directory?
  inputBinding:
    prefix: --alignments
- id: in_directory_write_alignments
  doc: The directory to write alignments meeting criteria.
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_input_format
  doc: The input alignment format
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_containing_data_for
  doc: Output only alignments --containing-data-for a taxon
  type: string[]
  inputBinding:
    prefix: --containing-data-for
- id: in_min_length
  doc: Filter out alignments shorter than --min-length
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_min_tax_a
  doc: Filter out alignments with fewer than --min-taxa
  type: long?
  inputBinding:
    prefix: --min-taxa
- id: in_verbosity
  doc: The logging level to use.
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File?
  inputBinding:
    prefix: --log-path
- id: in_var_8
  doc: '[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_filter_alignments
