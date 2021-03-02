class: CommandLineTool
id: vote_transcripts.cwl
inputs:
- id: in_lg
  doc: ': path to the list of GTF files.'
  type: boolean?
  inputBinding:
    prefix: --lg
- id: in_threshold_average_coverage
  doc: ': threshold of average coverage depth across all the samples. (default: 1)'
  type: double?
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/psiclass:1.0.2--he1b5a44_0
cwlVersion: v1.1
baseCommand:
- vote-transcripts
