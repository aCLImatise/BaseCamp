class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/flye_samtools_reheader.cwl
inputs:
- id: no_pg
  doc: Do not generate an @PG header line.
  type: boolean
  inputBinding:
    prefix: --no-PG
- id: in_place
  doc: Modify the bam/cram file directly. (Defaults to outputting to stdout.)
  type: boolean
  inputBinding:
    prefix: --in-place
- id: or
  doc: samtools reheader [-P] -i in.header.sam file.bam
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- reheader
