class: CommandLineTool
id: secapr_quality_check.cwl
inputs:
- id: in_input
  doc: The directory containing fastq files
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "The output directory where quality-test results will be\nsaved\n"
  type: Directory?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "The output directory where quality-test results will be\nsaved\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- secapr
- quality_check
