class: CommandLineTool
id: ../../../biscuit_mergecg.cwl
inputs:
- id: nomeseq_mode_only
  doc: NOMe-seq mode, only merge C,G both in HCGD context
  type: boolean
  inputBinding:
    prefix: -n
- id: minimum_depth_merging
  doc: minimum depth after merging (0). This applies to the maximum depth across samples.
  type: long
  inputBinding:
    prefix: -k
- id: ref
  doc: fai-indexed fasta
  type: string
  inputBinding:
    position: 0
- id: bed
  doc: sorted bed file, starting from column 4,5, we have alternating beta value and
    coverage for each sample. This is what output from biscuit vcf2bed without -e.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- biscuit
- mergecg
