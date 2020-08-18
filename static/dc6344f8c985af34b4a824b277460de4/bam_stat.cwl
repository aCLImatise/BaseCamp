class: CommandLineTool
id: ../../../bam_stat.py.cwl
inputs:
- id: input_file
  doc: Alignment file in BAM or SAM format.
  type: string
  inputBinding:
    prefix: --input-file
- id: mapq
  doc: Minimum mapping quality (phred scaled) to determine "uniquely mapped" reads.
    default=30
  type: string
  inputBinding:
    prefix: --mapq
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_stat.py
