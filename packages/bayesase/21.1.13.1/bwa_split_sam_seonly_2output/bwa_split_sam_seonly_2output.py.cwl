class: CommandLineTool
id: bwa_split_sam_seonly_2output.py.cwl
inputs:
- id: in_sam
  doc: Name of the SAM file [required]
  type: File?
  inputBinding:
    prefix: --sam
- id: in_summ_name
  doc: Name of the summary file
  type: File?
  inputBinding:
    prefix: --summname
- id: in_summ
  doc: summary file
  type: File?
  inputBinding:
    prefix: --summ
- id: in_uniq
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --uniq
- id: in_output
  doc: --uniq UNIQ           mapped reads file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bayesase:21.1.13.1--py_0
cwlVersion: v1.1
baseCommand:
- bwa_split_sam_seonly_2output.py
