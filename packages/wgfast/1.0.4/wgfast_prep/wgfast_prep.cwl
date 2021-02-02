class: CommandLineTool
id: wgfast_prep.cwl
inputs:
- id: in_snp_matrix
  doc: path to NASP snp_matrix [REQUIRED]
  type: File
  inputBinding:
    prefix: --snp_matrix
- id: in_model
  doc: "model for RAxML, defaults to ASC_GTRGAMMA, can also be\nGTRGAMMA"
  type: string
  inputBinding:
    prefix: --model
- id: in_processors
  doc: "number of processors to use with GTRGAMMA, defaults to\n4\n"
  type: long
  inputBinding:
    prefix: --processors
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- wgfast_prep
