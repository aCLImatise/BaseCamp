class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mergeSTR.cwl
inputs:
- id: v_cfs
  doc: Comma-separated list of VCF files to merge (must be sorted, bgzipped and indexed)
  type: string
  inputBinding:
    prefix: --vcfs
- id: out
  doc: Prefix to name output files
  type: string
  inputBinding:
    prefix: --out
- id: vcf_type
  doc: Options=['gangstr', 'advntr', 'hipstr', 'eh', 'popstr']
  type: string
  inputBinding:
    prefix: --vcftype
- id: update_sample_from_file
  doc: Use file names, rather than sample header names, when merging
  type: boolean
  inputBinding:
    prefix: --update-sample-from-file
- id: verbose
  doc: Print out extra info
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Don't print out anything
  type: boolean
  inputBinding:
    prefix: --quiet
- id: tool
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: merging
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: str
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: vcf
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 5
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: gang_str
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs: []
cwlVersion: v1.1
baseCommand:
- mergeSTR
