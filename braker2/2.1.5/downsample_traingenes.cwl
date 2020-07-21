class: CommandLineTool
id: ../../../downsample_traingenes.pl.cwl
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
- id: train_genes_dot_gtf
  doc: training gene structure file in gtf format (e.g. from GeneMark-EX).
  type: string
  inputBinding:
    position: 0
- id: out_dot_gtf
  doc: output file with downsampled training gene structures
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- downsample_traingenes.pl
