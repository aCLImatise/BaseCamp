class: CommandLineTool
id: kssd_set.cwl
inputs:
- id: in_union
  doc: get union set of the sketches.
  type: boolean
  inputBinding:
    prefix: --union
- id: in_int_sect
  doc: "intersect with the pan-sketch for all input\nsketches."
  type: string
  inputBinding:
    prefix: --intsect
- id: in_subtract
  doc: subtract the pan-sketch from all input sketches.
  type: string
  inputBinding:
    prefix: --subtract
- id: in_outdir
  doc: specify the output directory.
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_option_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_combined_sketch
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: specify the output directory.
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- kssd
- set
