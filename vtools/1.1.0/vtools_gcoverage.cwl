class: CommandLineTool
id: vtools_gcoverage.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_gvc_f
  doc: Path to input VCF file  [required]
  type: File
  inputBinding:
    prefix: --input-gvcf
- id: ref_flat_file
  doc: Path to refFlat file  [required]
  type: File
  inputBinding:
    prefix: --refflat-file
- id: per_exon
  doc: / --per-transcript  Collect metrics per exon or per transcript
  type: boolean
  inputBinding:
    prefix: --per-exon
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools-gcoverage
