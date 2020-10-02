class: CommandLineTool
id: bank2fasta.cwl
inputs:
- id: in_bank
  doc: bank where assembly is stored
  type: string
  inputBinding:
    prefix: -bank
- id: in_eid
  doc: report eids
  type: boolean
  inputBinding:
    prefix: -eid
- id: in_iid
  doc: report iids (default)
  type: boolean
  inputBinding:
    prefix: -iid
- id: in_dump_just_eids
  doc: Dump just the contig eids listed in file
  type: File
  inputBinding:
    prefix: -E
- id: in_dump_just_iids
  doc: Dump just the contig iids listed in file
  type: File
  inputBinding:
    prefix: -I
- id: in_report_qualities_file
  doc: Report qualities in file
  type: File
  inputBinding:
    prefix: -q
- id: in_show_contig_details
  doc: Show contig details (num reads, coverage) on fasta header line
  type: boolean
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bank2fasta
