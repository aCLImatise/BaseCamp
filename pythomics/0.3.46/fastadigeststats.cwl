#!/usr/bin/env cwl-runner

baseCommand:
- fastadigeststats.py
class: CommandLineTool
cwlVersion: v1.0
id: fastadigeststats.py
inputs:
- doc: A regex cleavage pattern such as [KR]|{P} to cleave proteins with.
  id: enzyme_pattern
  inputBinding:
    prefix: --enzyme-pattern
  type: string
- doc: Minimum cleavage length
  id: min
  inputBinding:
    prefix: --min
  type: long
- doc: Maximum cleavage length
  id: max
  inputBinding:
    prefix: --max
  type: long
- doc: Should cleavages be done in parallel (default is serial digestion)?
  id: parallel
  inputBinding:
    prefix: --parallel
  type: boolean
