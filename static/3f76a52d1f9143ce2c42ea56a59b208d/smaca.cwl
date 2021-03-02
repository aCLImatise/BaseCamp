class: CommandLineTool
id: smaca.cwl
inputs:
- id: in_profile
  doc: execution statistics (only for debug purposes)
  type: boolean?
  inputBinding:
    prefix: --profile
- id: in_output
  doc: output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_n_cpus
  doc: number of cores to use
  type: long?
  inputBinding:
    prefix: --ncpus
- id: in_reference
  doc: '[hg19|hg38]  reference genome that was used for alignment'
  type: boolean?
  inputBinding:
    prefix: --reference
- id: in_bam_list_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/smaca:1.2.3--py37h0498b6d_1
cwlVersion: v1.1
baseCommand:
- smaca
