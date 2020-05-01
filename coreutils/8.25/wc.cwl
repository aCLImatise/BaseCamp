#!/usr/bin/env cwl-runner

baseCommand:
- wc
class: CommandLineTool
cwlVersion: v1.0
id: wc
inputs:
- doc: print the byte counts
  id: bytes
  inputBinding:
    prefix: --bytes
  type: boolean
- doc: print the character counts
  id: chars
  inputBinding:
    prefix: --chars
  type: boolean
- doc: print the newline counts
  id: lines
  inputBinding:
    prefix: --lines
  type: boolean
- doc: read input from the files specified by NUL-terminated names in file F; If F
    is - then read names from standard input
  id: files_0_from
  inputBinding:
    prefix: --files0-from
  type: string
- doc: print the maximum display width
  id: max_line_length
  inputBinding:
    prefix: --max-line-length
  type: boolean
- doc: print the word counts
  id: words
  inputBinding:
    prefix: --words
  type: boolean
