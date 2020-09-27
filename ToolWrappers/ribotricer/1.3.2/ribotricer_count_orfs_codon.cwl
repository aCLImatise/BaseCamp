class: CommandLineTool
id: ribotricer_count_orfs_codon.cwl
inputs:
- id: in_ribot_ricer_index
  doc: "Path to the index file of ribotricer This\nfile should be generated using\
    \ ribotricer\nprepare-orfs  [required]"
  type: File
  inputBinding:
    prefix: --ribotricer_index
- id: in_detected_orfs
  doc: "Path to the detected orfs file This file\nshould be generated using ribotricer\
    \ detect-\norfs  [required]"
  type: File
  inputBinding:
    prefix: --detected_orfs
- id: in_features
  doc: ORF types separated with comma  [required]
  type: string
  inputBinding:
    prefix: --features
- id: in_ribot_ricer_index_fast_a
  doc: Path to ORF seq file  [required]
  type: File
  inputBinding:
    prefix: --ribotricer_index_fasta
- id: in_prefix
  doc: Prefix for output files  [required]
  type: string
  inputBinding:
    prefix: --prefix
- id: in_report_all
  doc: "Whether output all ORFs including those non-\ntranslating ones"
  type: boolean
  inputBinding:
    prefix: --report_all
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ribotricer
- count-orfs-codon
