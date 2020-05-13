class: CommandLineTool
id: create_snp_matrix.py.cwl
inputs:
- id: sample_dirs_file
  doc: Relative or absolute path to file containing a list of directories -- one per
    sample
  type: string
  inputBinding:
    position: 0
- id: force
  doc: 'Force processing even when result file already exists and is newer than inputs
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: cons_filename
  doc: 'File name of the previously created consensus SNP call file which must exist
    in each of the sample directories (default: consensus.fasta)'
  type: string
  inputBinding:
    prefix: --consFileName
- id: output
  doc: 'Output file. Relative or absolute path to the SNP matrix file (default: snpma.fasta)'
  type: File
  inputBinding:
    prefix: --output
- id: v
  doc: '0..5, --verbose 0..5 Verbose message level (0=no info, 5=lots) (default: 1)'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- create_snp_matrix.py
