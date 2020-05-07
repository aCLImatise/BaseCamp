class: CommandLineTool
id: downsample_traingenes.pl.cwl
inputs:
- id: lambda
  doc: Parameter lambda of Poisson distribution (default value is 0)
  type: string
  inputBinding:
    prefix: --lambda
- id: intron_num_lst
  doc: File with intron numbers per gene (selected)
  type: string
  inputBinding:
    prefix: --intron_num_lst
outputs: []
cwlVersion: v1.1
baseCommand:
- downsample_traingenes.pl
