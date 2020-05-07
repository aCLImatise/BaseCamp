class: CommandLineTool
id: singlem_pipe.cwl
inputs:
- id: threads
  doc: Use N threads.
  type: string
  inputBinding:
    prefix: --threads
- id: output_extras
  doc: Output more detailed information in the OTU table.
  type: boolean
  inputBinding:
    prefix: --output_extras
- id: assignment_method
  doc: 'Specify taxonomic assignment method [default: pplacer].'
  type: string
  inputBinding:
    prefix: --assignment_method
outputs: []
cwlVersion: v1.1
baseCommand:
- singlem
- pipe
