class: CommandLineTool
id: shuffleBank.cwl
inputs:
- id: bank
  doc: bank where assembly is stored
  type: string
  inputBinding:
    prefix: -bank
- id: p
  doc: Common file prefix to add to the output
  type: string
  inputBinding:
    prefix: -p
- id: c
  doc: Dump contigs from the bank (default)
  type: boolean
  inputBinding:
    prefix: -c
- id: r
  doc: Dump reads from the bank
  type: boolean
  inputBinding:
    prefix: -r
- id: eid
  doc: report eids
  type: boolean
  inputBinding:
    prefix: -eid
- id: iid
  doc: report iids (default)
  type: boolean
  inputBinding:
    prefix: -iid
- id: f
  doc: Dump in fastq format
  type: boolean
  inputBinding:
    prefix: -f
- id: q
  doc: 'Use this as the min base quality (default: 33 / Sanger FASTQ)'
  type: long
  inputBinding:
    prefix: -Q
- id: a
  doc: Ignore clear range and dump entire sequence
  type: boolean
  inputBinding:
    prefix: -a
- id: d
  doc: Display details on header line
  type: boolean
  inputBinding:
    prefix: -d
- id: l
  doc: 'Set the maximum number of bases per line (Default: 70)'
  type: string
  inputBinding:
    prefix: -L
- id: e
  doc: <fofn>      List of files specifying by EID where to write
  type: boolean
  inputBinding:
    prefix: -E
- id: i
  doc: List of files specifying by EID where to write
  type: string
  inputBinding:
    prefix: -I
outputs: []
cwlVersion: v1.1
baseCommand:
- shuffleBank
