class: CommandLineTool
id: perl_reversion.cwl
inputs:
- id: in_updated_dot
  doc: '"-normal"'
  type: string
  inputBinding:
    position: 0
- id: in_version_dot
  doc: Alone, these options control how the current (found) version is
  type: string
  inputBinding:
    position: 0
- id: in_displayed_dot
  doc: With "-bump" or "-set", also update version strings to have the
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- perl-reversion
