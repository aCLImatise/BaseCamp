class: CommandLineTool
id: create_snp_reference_seq.py.cwl
inputs:
- id: in_force
  doc: "Force processing even when result file already exists\nand is newer than inputs\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: --force
- id: in_snp_list_file
  doc: "Relative or absolute path to the SNP list file\n(default: snplist.txt)"
  type: File
  inputBinding:
    prefix: --snpListFile
- id: in_output
  doc: "Output file. Relative or absolute path to the SNP\nreference sequence file\
    \ (default: referenceSNP.fasta)"
  type: File
  inputBinding:
    prefix: --output
- id: in_verbose
  doc: 'Verbose message level (0=no info, 5=lots) (default: 1)'
  type: long
  inputBinding:
    prefix: --verbose
- id: in_cfsan_snp_pipeline
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_snp_reference
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file. Relative or absolute path to the SNP\nreference sequence file\
    \ (default: referenceSNP.fasta)"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- create_snp_reference_seq.py
