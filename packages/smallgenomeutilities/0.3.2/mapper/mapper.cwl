class: CommandLineTool
id: mapper.cwl
inputs:
- id: in_name_coordinates_source
  doc: Name and Coordinates of source contig, e.g. CONSENSUS:100-200
  type: long?
  inputBinding:
    prefix: -f
- id: in_name_target_contig
  doc: Name of target contig
  type: string?
  inputBinding:
    prefix: -t
- id: in_coordinates_treated_based
  doc: Whether coordinates should be treated 1-based
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_print_more_information
  doc: Print more information (such as subsequences in references)
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_msa_file
  doc: file containing MSA
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0
cwlVersion: v1.1
baseCommand:
- mapper
