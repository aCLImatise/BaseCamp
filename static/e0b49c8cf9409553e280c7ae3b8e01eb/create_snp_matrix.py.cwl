class: CommandLineTool
id: create_snp_matrix.py.cwl
inputs:
- id: in_force
  doc: "Force processing even when result file already exists\nand is newer than inputs\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_cons_filename
  doc: "File name of the previously created consensus SNP call\nfile which must exist\
    \ in each of the sample\ndirectories (default: consensus.fasta)"
  type: File?
  inputBinding:
    prefix: --consFileName
- id: in_output
  doc: "Output file. Relative or absolute path to the SNP\nmatrix file (default: snpma.fasta)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_verbose
  doc: 'Verbose message level (0=no info, 5=lots) (default: 1)'
  type: long?
  inputBinding:
    prefix: --verbose
- id: in_cfsan_snp_pipeline
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_snp_matrix
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file. Relative or absolute path to the SNP\nmatrix file (default: snpma.fasta)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- create_snp_matrix.py
