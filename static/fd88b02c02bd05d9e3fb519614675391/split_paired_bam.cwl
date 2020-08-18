class: CommandLineTool
id: ../../../split_paired_bam.py.cwl
inputs:
- id: input_file
  doc: Alignment file in BAM or SAM format. BAM file should be sorted and indexed
  type: string
  inputBinding:
    prefix: --input-file
- id: out_prefix
  doc: Prefix of output BAM files. "prefix.R1.bam" file contains the 1st read, "prefix.R2.bam"
    file contains the 2nd read
  type: string
  inputBinding:
    prefix: --out-prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- split_paired_bam.py
