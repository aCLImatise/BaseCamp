class: CommandLineTool
id: pbmerge.cwl
inputs:
- id: in_str_output_bam
  doc: STR   Output BAM filename. Writes to stdout if not provided.
  type: File?
  inputBinding:
    prefix: -o
- id: in_no_pbi
  doc: Disables creation of PBI index file. PBI always disabled when writing to stdout.
  type: boolean?
  inputBinding:
    prefix: --no-pbi
- id: in_input
  doc: 'FILE  Input file(s). Maybe one of: DataSetXML, BAM file(s), or FOFN'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_str_output_bam
  doc: STR   Output BAM filename. Writes to stdout if not provided.
  type: File?
  outputBinding:
    glob: $(inputs.in_str_output_bam)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbbam:1.6.0--h5b7e6e0_0
cwlVersion: v1.1
baseCommand:
- pbmerge
