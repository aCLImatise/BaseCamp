class: CommandLineTool
id: arrow_annotations_add_transcript.cwl
inputs:
- id: in_transcript
  doc: Transcript data
  type: string?
  inputBinding:
    prefix: --transcript
- id: in_suppress_history
  doc: Suppress the history of this operation
  type: boolean?
  inputBinding:
    prefix: --suppress_history
- id: in_suppress_events
  doc: Suppress instant update of the user interface
  type: boolean?
  inputBinding:
    prefix: --suppress_events
- id: in_organism
  doc: Organism Common Name
  type: string?
  inputBinding:
    prefix: --organism
- id: in_sequence
  doc: Sequence Name
  type: string?
  inputBinding:
    prefix: --sequence
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- arrow
- annotations
- add_transcript
