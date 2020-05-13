class: CommandLineTool
id: medaka_compress_bam.cwl
inputs:
- id: bam_input
  doc: Bam file to compress.
  type: string
  inputBinding:
    position: 0
- id: bam_output
  doc: Output bam file.
  type: string
  inputBinding:
    position: 1
- id: ref_fname
  doc: Reference fasta file used for `bam_input`.
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- medaka
- compress_bam
