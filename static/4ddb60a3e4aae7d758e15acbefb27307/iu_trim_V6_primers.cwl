class: CommandLineTool
id: ../../../iu_trim_V6_primers.cwl
inputs:
- id: archaea
  doc: When set, primers for arhacea is used instead of bacteria.
  type: boolean
  inputBinding:
    prefix: --archaea
- id: debug
  doc: Turn on debug prints.
  type: boolean
  inputBinding:
    prefix: --debug
- id: input_fast_a
  doc: 'FASTA file that contain archaeal or bacterial V6 sequences with primers. This
    file is expected to be the result of iu-merge- pairs analysis with these flags
    and parameter: "--marker-gene- stringent --retain-only-overlap --max-num-mismatches
    0".'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- iu-trim-V6-primers
