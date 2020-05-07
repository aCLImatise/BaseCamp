class: CommandLineTool
id: create_snp_reference_seq.py.cwl
inputs:
- id: reference_file
  doc: Relative or absolute path to the reference bases file in fasta format
  type: string
  inputBinding:
    position: 0
- id: force
  doc: 'Force processing even when result file already exists and is newer than inputs
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: snp_list_file
  doc: 'Relative or absolute path to the SNP list file (default: snplist.txt)'
  type: File
  inputBinding:
    prefix: --snpListFile
- id: output
  doc: 'Output file. Relative or absolute path to the SNP reference sequence file
    (default: referenceSNP.fasta)'
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
- create_snp_reference_seq.py
