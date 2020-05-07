class: CommandLineTool
id: bedparse_bed12tobed6.cwl
inputs:
- id: bed_file
  doc: Path to the GTF file.
  type: string
  inputBinding:
    position: 0
- id: append_exn
  doc: Appends the exon number to the transcript name.
  type: boolean
  inputBinding:
    prefix: --appendExN
- id: which_exon
  doc: Which exon to return. First and last respectively report the first or last
    exon relative to the TSS (i.e. taking strand into account).
  type: string
  inputBinding:
    prefix: --whichExon
- id: keep_introns
  doc: Add records for introns as well. Only allowed if --whichExon all
  type: boolean
  inputBinding:
    prefix: --keepIntrons
outputs: []
cwlVersion: v1.1
baseCommand:
- bedparse
- bed12tobed6
