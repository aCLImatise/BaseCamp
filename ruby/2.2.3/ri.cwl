#!/usr/bin/env cwl-runner

baseCommand:
- ri
class: CommandLineTool
cwlVersion: v1.0
id: ri
inputs:
- doc: ''
  id: names
  inputBinding:
    position: 0
  type: string
- doc: ', --[no-]interactive           In interactive mode you can repeatedly look
    up methods with autocomplete.'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: ', --[no-]all                   Show all documentation for a class or module.'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ', --[no-]list                  List classes ri knows about. --[no-]pager                 Send
    output directly to stdout, rather than to a pager.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: Synonym for --no-pager
  id: t
  inputBinding:
    prefix: -T
  type: boolean
- doc: Set the width of the output.
  id: width
  inputBinding:
    prefix: --width
  type: string
- doc: '[PORT]              Run RDoc server on the given port. The default port is
    8214.'
  id: server
  inputBinding:
    prefix: --server
  type: boolean
- doc: 'Uses the selected formatter. The default formatter is bs for paged output
    and ansi otherwise. Valid formatters are: ansi bs markdown rdoc'
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: Dumps data from an ri cache or data file
  id: dump
  inputBinding:
    prefix: --dump
  type: string
