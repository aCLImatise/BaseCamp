class: CommandLineTool
id: samgroupbyname.cwl
inputs:
- id: in_write_output_bam
  doc: Write output in BAM format
  type: boolean
  inputBinding:
    prefix: -b
- id: in_write_file_output
  doc: Write to FILE rather than standard output
  type: File
  inputBinding:
    prefix: -o
- id: in_emit_pairs_reads
  doc: Emit pairs only, discarding any leftover singleton reads
  type: boolean
  inputBinding:
    prefix: -p
- id: in_display_file_information
  doc: Display file information and statistics
  type: boolean
  inputBinding:
    prefix: -v
- id: in_bpv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -bpv
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_file_output
  doc: Write to FILE rather than standard output
  type: File
  outputBinding:
    glob: $(inputs.in_write_file_output)
cwlVersion: v1.1
baseCommand:
- samgroupbyname
