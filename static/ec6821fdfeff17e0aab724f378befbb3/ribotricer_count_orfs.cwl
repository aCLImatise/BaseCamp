class: CommandLineTool
id: ribotricer_count_orfs.cwl
inputs:
- id: ribot_ricer_index
  doc: Path to the index file of ribotricer This file should be generated using ribotricer
    prepare-orfs [required]
  type: string
  inputBinding:
    prefix: --ribotricer_index
- id: detected_orfs
  doc: Path to the detected orfs file This file should be generated using ribotricer
    detect-orfs  [required]
  type: string
  inputBinding:
    prefix: --detected_orfs
- id: features
  doc: ORF types separated with comma  [required]
  type: string
  inputBinding:
    prefix: --features
- id: out
  doc: Path to output file  [required]
  type: string
  inputBinding:
    prefix: --out
- id: report_all
  doc: Whether output all ORFs including those non- translating ones
  type: boolean
  inputBinding:
    prefix: --report_all
outputs: []
cwlVersion: v1.1
baseCommand:
- ribotricer
- count-orfs
