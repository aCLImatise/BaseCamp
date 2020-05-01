#!/usr/bin/env cwl-runner

baseCommand:
- quorum_create_database
class: CommandLineTool
cwlVersion: v1.0
id: quorum_create_database
inputs:
- doc: '*Initial hash size'
  id: size
  inputBinding:
    prefix: --size
  type: string
- doc: '*Mer length'
  id: mer
  inputBinding:
    prefix: --mer
  type: string
- doc: '*Bits for value field'
  id: bits
  inputBinding:
    prefix: --bits
  type: string
- doc: Min quality as an int
  id: min_qual_value
  inputBinding:
    prefix: --min-qual-value
  type: string
- doc: Min quality as a ASCII character
  id: min_qual_char
  inputBinding:
    prefix: --min-qual-char
  type: string
- doc: Number of threads (1)
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Output file (combined_database)
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: Maximum number of reprobes (126)
  id: re_probe
  inputBinding:
    prefix: --reprobe
  type: long
