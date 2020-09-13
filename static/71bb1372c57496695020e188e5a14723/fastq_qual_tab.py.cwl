class: CommandLineTool
id: ../../../fastq_qual_tab.py.cwl
inputs:
- id: in_output_tab_separated
  doc: Output tab separated file.
  type: File
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_tab_separated
  doc: Output tab separated file.
  type: File
  outputBinding:
    glob: $(inputs.in_output_tab_separated)
cwlVersion: v1.1
baseCommand:
- fastq_qual_tab.py
