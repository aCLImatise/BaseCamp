class: CommandLineTool
id: phyluce_align_extract_taxon_fasta_from_alignments.cwl
inputs:
- id: alignments
  doc: The directory of alignments
  type: string
  inputBinding:
    prefix: --alignments
- id: tax_on
  doc: The taxon to extract
  type: string
  inputBinding:
    prefix: --taxon
- id: output
  doc: The output FASTA file
  type: string
  inputBinding:
    prefix: --output
- id: input_format
  doc: The input format of the alignments
  type: string
  inputBinding:
    prefix: --input-format
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
- phyluce_align_extract_taxon_fasta_from_alignments
