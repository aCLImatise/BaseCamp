class: CommandLineTool
id: read_analysis.py_quantify.cwl
inputs:
- id: in_read
  doc: Input reads for quantification
  type: string
  inputBinding:
    prefix: --read
- id: in_ref_t
  doc: Reference Transcriptome
  type: string
  inputBinding:
    prefix: --ref_t
- id: in_output
  doc: "The location and prefix of outputting profile (Default\n= expression)"
  type: string
  inputBinding:
    prefix: --output
- id: in_num_threads
  doc: "Number of threads for alignment (Default = 1)\n"
  type: long
  inputBinding:
    prefix: --num_threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- read_analysis.py
- quantify
