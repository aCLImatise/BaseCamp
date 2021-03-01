class: CommandLineTool
id: gff2gbSmallDNA.pl.cwl
inputs:
- id: in_bad
  doc: Specify a file with gene names. All except these are included in the output.
  type: File?
  inputBinding:
    prefix: --bad
- id: in_good
  doc: "Specify a file with gene names. Only these genes are considered\nfrom the\
    \ input, also for overlap detection."
  type: File?
  inputBinding:
    prefix: --good
- id: in_overlap
  doc: Overlap filtering turned off.
  type: boolean?
  inputBinding:
    prefix: --overlap
- id: in_connected
  doc: Do not cut a sequence into gene-pieces anymore.
  type: boolean?
  inputBinding:
    prefix: --connected
- id: in_soft_masked
  doc: Keep softmasking information from input sequence
  type: boolean?
  inputBinding:
    prefix: --softmasked
- id: in_hard_mask
  doc: Convert softmasking information from input sequence to hardmasking in output
    file
  type: boolean?
  inputBinding:
    prefix: --hardmask
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_bad
  doc: Specify a file with gene names. All except these are included in the output.
  type: File?
  outputBinding:
    glob: $(inputs.in_bad)
hints: []
cwlVersion: v1.1
baseCommand:
- gff2gbSmallDNA.pl
