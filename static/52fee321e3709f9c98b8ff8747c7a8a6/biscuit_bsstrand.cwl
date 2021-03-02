class: CommandLineTool
id: biscuit_bsstrand.cwl
inputs:
- id: in_region_optional_chrx
  doc: region (optional, chrX:123-456 if missing, process the whole bam).
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_append_count_tag
  doc: append count of C>T (YC tag) and G>A (YG tag) in output bam.
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_correct_bsstrand_output
  doc: correct bsstrand in the output bam, YD tag will be replaced if existent and
    created if not.
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_output
  doc: optional output bam, work with -y or -c
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- biscuit
- bsstrand
