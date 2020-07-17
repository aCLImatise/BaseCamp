class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bam2fq.py.cwl
inputs:
- id: input_file
  doc: Alignment file in BAM or SAM format.
  type: string
  inputBinding:
    prefix: --input-file
- id: out_prefix
  doc: Prefix of output fastq files(s).
  type: string
  inputBinding:
    prefix: --out-prefix
- id: single_end
  doc: Specificy '-s' or '--single-end' for single-end sequencing.
  type: boolean
  inputBinding:
    prefix: --single-end
- id: compress
  doc: Specificy '-c' or '--compress' to compress output fastq file(s) using 'gzip'
    command.
  type: boolean
  inputBinding:
    prefix: --compress
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2fq.py
