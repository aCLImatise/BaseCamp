class: CommandLineTool
id: phyluce_align_extract_taxon_fasta_from_alignments.cwl
inputs:
- id: in_alignments
  doc: The directory of alignments
  type: Directory
  inputBinding:
    prefix: --alignments
- id: in_tax_on
  doc: The taxon to extract
  type: string
  inputBinding:
    prefix: --taxon
- id: in_output
  doc: The output FASTA file
  type: File
  inputBinding:
    prefix: --output
- id: in_input_format
  doc: The input format of the alignments
  type: string
  inputBinding:
    prefix: --input-format
- id: in_verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File
  inputBinding:
    prefix: --log-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output FASTA file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- phyluce_align_extract_taxon_fasta_from_alignments
