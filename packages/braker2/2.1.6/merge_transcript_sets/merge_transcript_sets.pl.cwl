class: CommandLineTool
id: merge_transcript_sets.pl.cwl
inputs:
- id: in_transcripts_dot
  doc: 'Attention: nonredundant transcript names over all sets are assumed!'
  type: string
  inputBinding:
    position: 0
- id: in_set_ndot_gtf
  doc: file with gene predictions in gtf format
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/braker2:2.1.6--hdfd78af_1
cwlVersion: v1.1
baseCommand:
- merge_transcript_sets.pl
