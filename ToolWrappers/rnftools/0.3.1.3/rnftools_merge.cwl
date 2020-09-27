class: CommandLineTool
id: rnftools_merge.cwl
inputs:
- id: in_input_fastq_files
  doc: input FASTQ files
  type: string[]
  inputBinding:
    prefix: -i
- id: in_mode_mergeing_files
  doc: mode for mergeing files (single-end / paired-end-bwa / paired-end-bfast)
  type: string
  inputBinding:
    prefix: -m
- id: in_output_prefix
  doc: output prefix
  type: string
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rnftools
- merge
