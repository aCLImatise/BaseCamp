class: CommandLineTool
id: run_seqtools.py.cwl
inputs:
- id: in_in_file
  doc: '[INFILE]      name of the input file (default: standard input)'
  type: boolean?
  inputBinding:
    prefix: -infile
- id: in_outfile
  doc: '[OUTFILE]    name of the output file (default: standard output)'
  type: File?
  inputBinding:
    prefix: -outfile
- id: in_in_format
  doc: "[{COMPACT3,FASTA}]\nformat of the input file (default: FASTA)"
  type: boolean?
  inputBinding:
    prefix: -informat
- id: in_out_format
  doc: "[{COMPACT3,FASTA,PHYLIP}]\nformat of the output file (default: FASTA)"
  type: File?
  inputBinding:
    prefix: -outformat
- id: in_mask_sites
  doc: "sites with less than N non-gap characters will be\nmasked out"
  type: string?
  inputBinding:
    prefix: -masksites
- id: in_filter_fragments
  doc: sequences with less than N non-gap sequences will be
  type: string?
  inputBinding:
    prefix: -filterfragments
- id: in_removed
  doc: -rename MappingFile   Rename sequences, according to the mapping file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: '[OUTFILE]    name of the output file (default: standard output)'
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_out_format
  doc: "[{COMPACT3,FASTA,PHYLIP}]\nformat of the output file (default: FASTA)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_format)
hints: []
cwlVersion: v1.1
baseCommand:
- run_seqtools.py
