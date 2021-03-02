class: CommandLineTool
id: metilene_output.pl.cwl
inputs:
- id: in_pathprefix_output_files
  doc: 'path/prefix of output files (default: input_path/)'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_maximum_adj_pvalue
  doc: 'maximum (<) adj. p-value (q-value) for output of significant DMRs (default:
    0.05)'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_minimum_cpgs_default
  doc: minimum (>=) cpgs (default:10)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_minimum_mean_methylation
  doc: minimum mean methylation difference (>=) (default:0.1)
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_minimum_length_dmr
  doc: 'minimum length of DMR [nt] (>=) (post-processing, default: 0)'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_name_group_default
  doc: name of group A (default:"g1")
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_name_group_b
  doc: name of group B (default:"g2")
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_q
  doc: ''
  type: File?
  inputBinding:
    prefix: -q
- id: in_number
  doc: ''
  type: long?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- metilene_output.pl
