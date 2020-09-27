class: CommandLineTool
id: vtools_report_inbreeding_coefficient.cwl
inputs:
- id: in_maf_field
  doc: "Name of the field that holds minor allele frequency\nfor sample variants,\
    \ which is the field name for\ncommand 'vtools update table --from_stat\n\"maf_field=maf()\"\
    \ --samples ...'."
  type: string
  inputBinding:
    prefix: --maf_field
- id: in_samples
  doc: "[SAMPLES [SAMPLES ...]]\nConditions based on which samples are selected to\
    \ have\ninbreeding coefficients calculated. Default to all\nsamples."
  type: boolean
  inputBinding:
    prefix: --samples
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1).\n"
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_table
  doc: "Variants based on which individual inbreeding\ncoefficients are evaluated."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vtools_report
- inbreeding_coefficient
