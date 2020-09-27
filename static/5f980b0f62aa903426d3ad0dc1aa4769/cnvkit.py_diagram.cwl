class: CommandLineTool
id: cnvkit.py_diagram.cwl
inputs:
- id: in_segment
  doc: "Segmentation calls (.cns), the output of the 'segment'\ncommand."
  type: string
  inputBinding:
    prefix: --segment
- id: in_threshold
  doc: "Copy number change threshold to label genes. [Default:\n0.5]"
  type: long
  inputBinding:
    prefix: --threshold
- id: in_min_probes
  doc: "Minimum number of covered probes to label a gene.\n[Default: 3]"
  type: long
  inputBinding:
    prefix: --min-probes
- id: in_haploid_x_reference
  doc: "Assume inputs were normalized to a male reference\n(i.e. female samples will\
    \ have +1 log-CNR of chrX;\notherwise male samples would have -1 chrX)."
  type: boolean
  inputBinding:
    prefix: --haploid-x-reference
- id: in_sample_sex
  doc: "Specify the sample's chromosomal sex as male or\nfemale. (Otherwise guessed\
    \ from X and Y coverage)."
  type: string
  inputBinding:
    prefix: --sample-sex
- id: in_no_shift_xy
  doc: "Don't adjust the X and Y chromosomes according to\nsample sex."
  type: boolean
  inputBinding:
    prefix: --no-shift-xy
- id: in_output
  doc: Output PDF file name.
  type: File
  inputBinding:
    prefix: --output
- id: in_title
  doc: 'Plot title. [Default: sample ID, from filename or -i]'
  type: File
  inputBinding:
    prefix: --title
- id: in_filename
  doc: "Processed coverage data file (*.cnr), the output of\nthe 'fix' sub-command."
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output PDF file name.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- diagram
