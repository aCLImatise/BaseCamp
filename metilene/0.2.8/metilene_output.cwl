class: CommandLineTool
id: metilene_output.pl.cwl
inputs:
- id: o
  doc: 'path/prefix of output files (default: input_path/)'
  type: boolean
  inputBinding:
    prefix: -o
- id: p
  doc: 'maximum (<) adj. p-value (q-value) for output of significant DMRs (default:
    0.05)'
  type: boolean
  inputBinding:
    prefix: -p
- id: c
  doc: minimum (>=) cpgs (default:10)
  type: boolean
  inputBinding:
    prefix: -c
- id: d
  doc: minimum mean methylation difference (>=) (default:0.1)
  type: boolean
  inputBinding:
    prefix: -d
- id: l
  doc: 'minimum length of DMR [nt] (>=) (post-processing, default: 0)'
  type: boolean
  inputBinding:
    prefix: -l
- id: a
  doc: name of group A (default:"g1")
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: name of group B (default:"g2")
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- metilene_output.pl
