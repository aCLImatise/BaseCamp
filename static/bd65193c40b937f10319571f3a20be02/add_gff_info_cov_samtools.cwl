class: CommandLineTool
id: add_gff_info_cov_samtools.cwl
inputs:
- id: in_verbose
  doc: "if one or more samples are provided, the average\ncoverage is calculated"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_samples
  doc: "Sample name, will add a `sample_cov` in the GFF\nfile. If not passed, the\
    \ attribute will be `cov`"
  type: File?
  inputBinding:
    prefix: --samples
- id: in_depths
  doc: '`samtools depth -aa` file  [required]'
  type: File?
  inputBinding:
    prefix: --depths
- id: in_num_seqs
  doc: "Number of sequences to update the log. If 0, no\nmessage is logged  [default:\
    \ 0]"
  type: long?
  inputBinding:
    prefix: --num-seqs
- id: in_progress
  doc: Shows Progress Bar
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_input_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- add-gff-info
- cov_samtools
