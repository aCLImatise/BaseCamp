class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bam_somaticsniper.cwl
inputs:
- id: required_reference_sequence
  doc: REQUIRED reference sequence in the FASTA format
  type: File
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- bam-somaticsniper
