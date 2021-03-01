class: CommandLineTool
id: mergeSTR.cwl
inputs:
- id: in_v_cfs
  doc: "Comma-separated list of VCF files to merge (must be\nsorted, bgzipped and\
    \ indexed)"
  type: string?
  inputBinding:
    prefix: --vcfs
- id: in_out
  doc: Prefix to name output files
  type: string?
  inputBinding:
    prefix: --out
- id: in_vcf_type
  doc: "Options=['gangstr', 'advntr', 'hipstr', 'eh',\n'popstr'] (default: auto)"
  type: string?
  inputBinding:
    prefix: --vcftype
- id: in_update_sample_from_file
  doc: "Use file names, rather than sample header names, when\nmerging (default: False)"
  type: boolean?
  inputBinding:
    prefix: --update-sample-from-file
- id: in_verbose
  doc: 'Print out extra info (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Don't print out anything (default: False)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_tool
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_merging
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_tr
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_vcf
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_generated
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_by
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mergeSTR
