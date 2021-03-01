class: CommandLineTool
id: checkm_modify.cwl
inputs:
- id: in_add
  doc: ID of sequence to add to bin (may specify multiple times)
  type: string?
  inputBinding:
    prefix: --add
- id: in_remove
  doc: ID of sequence to remove from bin (may specify multiple times)
  type: string?
  inputBinding:
    prefix: --remove
- id: in_outlier_file
  doc: remove all sequences marked as outliers in the bin (see outlier command)
  type: File?
  inputBinding:
    prefix: --outlier_file
- id: in_quiet
  doc: suppress console output
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_seq_file
  doc: sequences used to generate bins (fasta format)
  type: string
  inputBinding:
    position: 0
- id: in_bin_file
  doc: bin to be modified
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: modified bin
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/checkm-genome:1.1.3--py_1
cwlVersion: v1.1
baseCommand:
- checkm
- modify
