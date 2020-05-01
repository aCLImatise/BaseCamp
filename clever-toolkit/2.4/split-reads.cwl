#!/usr/bin/env cwl-runner

baseCommand:
- split-reads
class: CommandLineTool
cwlVersion: v1.0
id: split-reads
inputs:
- doc: '[ --split_length ] arg (=35) Length of prefix/suffix to be extracted.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: Process single end reads (instead of paired  end).
  id: single_end
  inputBinding:
    prefix: --single-end
  type: boolean
