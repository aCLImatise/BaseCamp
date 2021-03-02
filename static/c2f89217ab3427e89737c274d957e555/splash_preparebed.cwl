class: CommandLineTool
id: splash_preparebed.cwl
inputs:
- id: in_bed
  doc: BED file
  type: File?
  inputBinding:
    prefix: --bed
- id: in_read_length
  doc: All UTRs short than the read length are removed.
  type: long?
  inputBinding:
    prefix: --read-length
- id: in_output_dir
  doc: "Output directory for mapped BAM files.\n"
  type: Directory?
  inputBinding:
    prefix: --outputDir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Output directory for mapped BAM files.\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- splash
- preparebed
