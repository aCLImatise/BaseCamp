class: CommandLineTool
id: ../../../biscuit_bsstrand.cwl
inputs:
- id: region_optional_chrx
  doc: region (optional, chrX:123-456 if missing, process the whole bam).
  type: boolean
  inputBinding:
    prefix: -g
- id: append_count_ct
  doc: append count of C>T (YC tag) and G>A (YG tag) in output bam.
  type: boolean
  inputBinding:
    prefix: -y
- id: correct_bsstrand_output
  doc: correct bsstrand in the output bam, YD tag will be replaced if existent and
    created if not.
  type: boolean
  inputBinding:
    prefix: -c
- id: output
  doc: optional output bam, work with -y or -c
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- biscuit
- bsstrand
