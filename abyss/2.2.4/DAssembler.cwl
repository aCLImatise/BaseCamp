class: CommandLineTool
id: DAssembler.cwl
inputs:
- id: reads
  doc: 'fasta-formatted reads file: the first read is used as the seed.'
  type: string
  inputBinding:
    position: 0
- id: max_overlap
  doc: maximum tier overlap for consensus calling [10]
  type: long
  inputBinding:
    prefix: --max_overlap
- id: max_mismatch
  doc: maximum mismatches allowed for consensus calling [2]
  type: long
  inputBinding:
    prefix: --max_mismatch
- id: min_coverage
  doc: minimum coverage to call a consensus base [2]
  type: long
  inputBinding:
    prefix: --min_coverage
- id: read_length
  doc: read length
  type: long
  inputBinding:
    prefix: --read_length
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- DAssembler
