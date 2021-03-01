class: CommandLineTool
id: biscuit_mergecg.cwl
inputs:
- id: in_nomeseq_mode_only
  doc: NOMe-seq mode, only merge C,G both in HCGD context
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_minimum_depth_merging
  doc: "minimum depth after merging (0). This applies to the maximum depth\nacross\
    \ samples."
  type: long?
  inputBinding:
    prefix: -k
- id: in_ref
  doc: fai-indexed fasta
  type: string
  inputBinding:
    position: 0
- id: in_bed
  doc: "sorted bed file, starting from column 4,5, we have alternating\nbeta value\
    \ and coverage for each sample. This is what output from\nbiscuit vcf2bed without\
    \ -e."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- biscuit
- mergecg
