class: CommandLineTool
id: downsample_traingenes.pl.cwl
inputs:
- id: in_lambda
  doc: "Parameter lambda of Poisson distribution\n(default value is 0)"
  type: long?
  inputBinding:
    prefix: --lambda
- id: in_intron_num_lst
  doc: File with intron numbers per gene (selected)
  type: File?
  inputBinding:
    prefix: --intron_num_lst
- id: in_train_genes_dot_gtf
  doc: "training gene structure file in gtf format (e.g. from\nGeneMark-EX)."
  type: string
  inputBinding:
    position: 0
- id: in_out_dot_gtf
  doc: output file with downsampled training gene structures
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- downsample_traingenes.pl
