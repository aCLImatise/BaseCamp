class: CommandLineTool
id: dnadiff.cwl
inputs:
- id: in_delta_precomputed_file
  doc: '|delta        Provide precomputed delta file for analysis'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_prefix_set_prefix
  doc: '|prefix       Set the prefix of the output files (default "out")'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_dna_diff
  doc: '[options]  <reference>  <query>'
  type: string
  inputBinding:
    position: 0
- id: in_dnadiff_d_delta
  doc: dnadiff  [options]  -d <delta file>
  type: string
  inputBinding:
    position: 1
- id: in_reference
  doc: Set the input reference multi-FASTA filename
  type: string
  inputBinding:
    position: 0
- id: in_query
  doc: Set the input query multi-FASTA filename
  type: string
  inputBinding:
    position: 1
- id: in_delta_file_unfiltered
  doc: delta file      Unfiltered .delta alignment file from nucmer
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mummer4:4.0.0rc1--pl526he1b5a44_0
cwlVersion: v1.1
baseCommand:
- dnadiff
