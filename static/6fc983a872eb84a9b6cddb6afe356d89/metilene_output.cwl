class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/metilene_output.pl.cwl
inputs:
- id: pathprefix_output_files
  doc: 'path/prefix of output files (default: input_path/)'
  type: boolean
  inputBinding:
    prefix: -o
- id: maximum_adj_qvalue
  doc: 'maximum (<) adj. p-value (q-value) for output of significant DMRs (default:
    0.05)'
  type: boolean
  inputBinding:
    prefix: -p
- id: minimum_cpgs_default
  doc: minimum (>=) cpgs (default:10)
  type: boolean
  inputBinding:
    prefix: -c
- id: minimum_mean_methylation
  doc: minimum mean methylation difference (>=) (default:0.1)
  type: boolean
  inputBinding:
    prefix: -d
- id: minimum_length_dmr
  doc: 'minimum length of DMR [nt] (>=) (post-processing, default: 0)'
  type: boolean
  inputBinding:
    prefix: -l
- id: name_group_default
  doc: name of group A (default:"g1")
  type: boolean
  inputBinding:
    prefix: -a
- id: name_group_b
  doc: name of group B (default:"g2")
  type: boolean
  inputBinding:
    prefix: -b
- id: q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: number
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- metilene_output.pl
