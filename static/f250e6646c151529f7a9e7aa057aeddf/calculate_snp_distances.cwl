class: CommandLineTool
id: calculate_snp_distances.py.cwl
inputs:
- id: snp_matrix_file
  doc: Relative or absolute path to the input multi-fasta SNP matrix file.
  type: string
  inputBinding:
    position: 0
- id: force
  doc: 'Force processing even when result file already exists and is newer than inputs
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: pairs
  doc: 'Relative or absolute path to the pairwise distance output file. (default:
    None)'
  type: File
  inputBinding:
    prefix: --pairs
- id: matrix
  doc: 'Relative or absolute path to the distance matrix output file. (default: None)'
  type: File
  inputBinding:
    prefix: --matrix
- id: v
  doc: '0..5, --verbose 0..5 Verbose message level (0=no info, 5=lots) (default: 1)'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- calculate_snp_distances.py
