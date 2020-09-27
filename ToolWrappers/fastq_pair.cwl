class: CommandLineTool
id: fastq_pair.cwl
inputs:
- id: in_size_default
  doc: size (default 100003)
  type: long
  inputBinding:
    prefix: -t
- id: in_number_elements_bucket
  doc: the number of elements in each bucket in the table
  type: long
  inputBinding:
    prefix: -p
- id: in_output_mainly_debugging
  doc: output. This is mainly for debugging
  type: string
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastq_pair
