#!/usr/bin/env cwl-runner

baseCommand:
- lz4
class: CommandLineTool
cwlVersion: v1.0
id: lz4
inputs:
- doc: ': decompression (default for .lz4 extension)'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: ': force compression'
  id: z
  inputBinding:
    prefix: -z
  type: boolean
- doc: ': overwrite output without prompting '
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: ': display Version number and exit'
  id: v
  inputBinding:
    prefix: -V
  type: boolean
- doc: ': verbose mode'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ': suppress warnings; specify twice to suppress errors too'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: ': force write to standard output, even if it is the console'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: ': test compressed file integrity'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: ': compress using Legacy format (Linux kernel compression)'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '#    : Block size [4-7](default : 7)'
  id: b
  inputBinding:
    prefix: -B
  type: boolean
- doc: ': Block dependency (improve compression ratio)'
  id: bd
  inputBinding:
    prefix: -BD
  type: boolean
- doc: ': disable stream checksum (default:enabled)'
  id: sx
  inputBinding:
    prefix: -Sx
  type: boolean
- doc: ': benchmark file(s)'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: '#    : iteration loops [1-9](default : 3), benchmark mode only'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
