class: CommandLineTool
id: ribotricer_count_orfs.cwl
inputs:
- id: in_ribot_ricer_index
  doc: "Path to the index file of ribotricer This file\nshould be generated using\
    \ ribotricer prepare-orfs\n[required]"
  type: File
  inputBinding:
    prefix: --ribotricer_index
- id: in_detected_orfs
  doc: "Path to the detected orfs file This file should be\ngenerated using ribotricer\
    \ detect-orfs  [required]"
  type: File
  inputBinding:
    prefix: --detected_orfs
- id: in_features
  doc: ORF types separated with comma  [required]
  type: string
  inputBinding:
    prefix: --features
- id: in_out
  doc: Path to output file  [required]
  type: File
  inputBinding:
    prefix: --out
- id: in_report_all
  doc: "Whether output all ORFs including those non-\ntranslating ones"
  type: boolean
  inputBinding:
    prefix: --report_all
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Path to output file  [required]
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- ribotricer
- count-orfs
