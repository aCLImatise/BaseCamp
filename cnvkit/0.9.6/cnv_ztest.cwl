class: CommandLineTool
id: cnv_ztest.py.cwl
inputs:
- id: c_narr
  doc: .cnr file
  type: string
  inputBinding:
    position: 0
- id: segment
  doc: Segmentation calls (.cns), the output of the 'segment' command).
  type: File
  inputBinding:
    prefix: --segment
- id: alpha
  doc: 'Significance threhold. [Default: 0.005]'
  type: string
  inputBinding:
    prefix: --alpha
- id: target
  doc: Test target bins only; ignore off-target bins.
  type: boolean
  inputBinding:
    prefix: --target
- id: haploid_x_reference
  doc: Assume inputs were normalized to a male reference (i.e. female samples will
    have +1 log-coverage of chrX; otherwise male samples would have -1 chrX).
  type: boolean
  inputBinding:
    prefix: --haploid-x-reference
- id: sample_sex
  doc: Specify the sample's chromosomal sex as male or female. (Otherwise guessed
    from X and Y coverage).
  type: string
  inputBinding:
    prefix: --sample-sex
- id: output
  doc: Output filename.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- cnv_ztest.py
