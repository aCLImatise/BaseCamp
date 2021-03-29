class: CommandLineTool
id: fix_unmapped.py.cwl
inputs:
- id: in_input_file
  doc: "Input file containing accession IDs to map. Multi-\ncolumn files accepted.\
    \ Only accessions in the first\ncolumn will be mapped."
  type: File?
  inputBinding:
    prefix: --input_file
- id: in_accession_two_taxid
  doc: "Accession2taxid reference mappings to search. NCBI\naccession2taxid format\
    \ required: 4 columns with\naccessions in column 1 and taxonomy IDs in column\
    \ 3."
  type: string[]
  inputBinding:
    prefix: --accession2taxid
- id: in_output_file
  doc: "Output file with 2 tab-delimited columns for\naccessions and taxids"
  type: File?
  inputBinding:
    prefix: --output_file
- id: in_remaining
  doc: "Name of text file containing non-found accessions from\ninput file\n"
  type: File?
  inputBinding:
    prefix: --remaining
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "Output file with 2 tab-delimited columns for\naccessions and taxids"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/krakentools:1.0.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- fix_unmapped.py
