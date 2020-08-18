class: CommandLineTool
id: ../../../samgroupbyname.cwl
inputs:
- id: write_output_bam
  doc: Write output in BAM format
  type: boolean
  inputBinding:
    prefix: -b
- id: write_file_output
  doc: Write to FILE rather than standard output
  type: File
  inputBinding:
    prefix: -o
- id: emit_pairs_only
  doc: Emit pairs only, discarding any leftover singleton reads
  type: boolean
  inputBinding:
    prefix: -p
- id: display_file_information
  doc: Display file information and statistics
  type: boolean
  inputBinding:
    prefix: -v
- id: bpv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -bpv
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- samgroupbyname
