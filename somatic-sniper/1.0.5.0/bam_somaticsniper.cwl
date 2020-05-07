class: CommandLineTool
id: bam_somaticsniper.cwl
inputs:
- id: f
  doc: REQUIRED reference sequence in the FASTA format
  type: File
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- bam-somaticsniper
