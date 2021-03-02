class: CommandLineTool
id: bamQC.py.cwl
inputs:
- id: in_bam_file_in
  doc: 'Input BAM file (default: None)'
  type: File?
  inputBinding:
    prefix: --bam-file-in
- id: in_max_length
  doc: "max frag length to consider (default: 1000)\n"
  type: long?
  inputBinding:
    prefix: --max-length
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bamQC.py
