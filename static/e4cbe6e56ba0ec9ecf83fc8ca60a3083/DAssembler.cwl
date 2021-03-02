class: CommandLineTool
id: DAssembler.cwl
inputs:
- id: in_max_overlap
  doc: maximum tier overlap for consensus calling [10]
  type: long?
  inputBinding:
    prefix: --max_overlap
- id: in_max_mismatch
  doc: maximum mismatches allowed for consensus calling [2]
  type: long?
  inputBinding:
    prefix: --max_mismatch
- id: in_min_coverage
  doc: minimum coverage to call a consensus base [2]
  type: long?
  inputBinding:
    prefix: --min_coverage
- id: in_read_length
  doc: read length
  type: long?
  inputBinding:
    prefix: --read_length
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_reads
  doc: 'fasta-formatted reads file: the first read is used as the seed.'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0
cwlVersion: v1.1
baseCommand:
- DAssembler
