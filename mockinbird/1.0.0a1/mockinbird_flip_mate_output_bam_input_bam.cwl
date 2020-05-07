class: CommandLineTool
id: mockinbird_flip_mate_output_bam_input_bam.cwl
inputs:
- id: input_bam
  doc: path to paired-end bam file
  type: string
  inputBinding:
    position: 0
- id: output_bam
  doc: path to output bam file
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mockinbird
- flip_mate
- output_bam
- input_bam
