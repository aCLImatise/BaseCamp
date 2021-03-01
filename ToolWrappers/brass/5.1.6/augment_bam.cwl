class: CommandLineTool
id: augment_bam.cwl
inputs:
- id: in_augment_output_records
  doc: Augment output records with original fields from FILE (required)
  type: File?
  inputBinding:
    prefix: -a
- id: in_invoke_command_its
  doc: Invoke a command for its output rather than reading FILE
  type: File?
  inputBinding:
    prefix: -c
- id: in_write_bam_file
  doc: Write output BAM file to FILE rather than standard output
  type: File?
  inputBinding:
    prefix: -o
- id: in_augment_records_pairs
  doc: Augment records in pairs (input files must be grouped by name)
  type: boolean?
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_augment_output_records
  doc: Augment output records with original fields from FILE (required)
  type: File?
  outputBinding:
    glob: $(inputs.in_augment_output_records)
- id: out_invoke_command_its
  doc: Invoke a command for its output rather than reading FILE
  type: File?
  outputBinding:
    glob: $(inputs.in_invoke_command_its)
- id: out_write_bam_file
  doc: Write output BAM file to FILE rather than standard output
  type: File?
  outputBinding:
    glob: $(inputs.in_write_bam_file)
hints: []
cwlVersion: v1.1
baseCommand:
- augment-bam
