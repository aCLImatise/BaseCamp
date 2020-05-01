#!/usr/bin/env cwl-runner

baseCommand:
- tkpp
class: CommandLineTool
cwlVersion: v1.0
id: tkpp
inputs:
- doc: '[try command : cpan -i Tk]'
  id: tk
  inputBinding:
    prefix: '- Tk'
  type: boolean
- doc: '::ColoredButton [try command : cpan -i Tk::ColoredButton]'
  id: tk
  inputBinding:
    prefix: '- Tk'
  type: boolean
- doc: '::EntryCheck [try command : cpan -i Tk::EntryCheck]'
  id: tk
  inputBinding:
    prefix: '- Tk'
  type: boolean
- doc: '::Getopt [try command : cpan -i Tk::Getopt]'
  id: tk
  inputBinding:
    prefix: '- Tk'
  type: boolean
- doc: '::Pod [try command : cpan -i Tk::Pod]'
  id: tk
  inputBinding:
    prefix: '- Tk'
  type: boolean
