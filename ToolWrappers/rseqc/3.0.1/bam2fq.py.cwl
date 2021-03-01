class: CommandLineTool
id: bam2fq.py.cwl
inputs:
- id: in_input_file
  doc: Alignment file in BAM or SAM format.
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_out_prefix
  doc: Prefix of output fastq files(s).
  type: string?
  inputBinding:
    prefix: --out-prefix
- id: in_single_end
  doc: Specificy '-s' or '--single-end' for single-end
  type: boolean?
  inputBinding:
    prefix: --single-end
- id: in_sequencing_dot
  doc: -c, --compress        Specificy '-c' or '--compress' to compress output
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bam2fq.py
