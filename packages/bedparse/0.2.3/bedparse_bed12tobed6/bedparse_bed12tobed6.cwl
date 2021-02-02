class: CommandLineTool
id: ../../../bedparse_bed12tobed6.cwl
inputs:
- id: in_append_exn
  doc: Appends the exon number to the transcript name.
  type: boolean
  inputBinding:
    prefix: --appendExN
- id: in_which_exon
  doc: "Which exon to return. First and last respectively\nreport the first or last\
    \ exon relative to the TSS\n(i.e. taking strand into account)."
  type: string
  inputBinding:
    prefix: --whichExon
- id: in_keep_introns
  doc: Add records for introns as well. Only allowed if
  type: boolean
  inputBinding:
    prefix: --keepIntrons
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedparse
- bed12tobed6
