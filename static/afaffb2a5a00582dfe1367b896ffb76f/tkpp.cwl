class: CommandLineTool
id: tkpp.cwl
inputs:
- id: tk
  doc: '[try command : cpan -i Tk]'
  type: boolean
  inputBinding:
    prefix: '- Tk'
- id: tk
  doc: '::ColoredButton [try command : cpan -i Tk::ColoredButton]'
  type: boolean
  inputBinding:
    prefix: '- Tk'
- id: tk
  doc: '::EntryCheck [try command : cpan -i Tk::EntryCheck]'
  type: boolean
  inputBinding:
    prefix: '- Tk'
- id: tk
  doc: '::Getopt [try command : cpan -i Tk::Getopt]'
  type: boolean
  inputBinding:
    prefix: '- Tk'
- id: tk
  doc: '::Pod [try command : cpan -i Tk::Pod]'
  type: boolean
  inputBinding:
    prefix: '- Tk'
outputs: []
cwlVersion: v1.1
baseCommand:
- tkpp
