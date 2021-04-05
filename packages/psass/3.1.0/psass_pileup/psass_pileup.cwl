class: CommandLineTool
id: psass_pileup.cwl
inputs:
- id: in_reference
  doc: TEXT:FILE    Reference file in fasta format, required with CRAM input files
  type: boolean?
  inputBinding:
    prefix: --reference
- id: in_output_file
  doc: TEXT         Write to an output file instead of stdout
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_min_map_quality
  doc: UINT         Minimum mapping quality to include a read in pileup                        [0]
  type: boolean?
  inputBinding:
    prefix: --min-map-quality
- id: in_alignment_files_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: TEXT         Write to an output file instead of stdout
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/psass:3.1.0--hc088bd4_0
cwlVersion: v1.1
baseCommand:
- psass
- pileup
