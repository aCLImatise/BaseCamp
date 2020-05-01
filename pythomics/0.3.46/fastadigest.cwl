#!/usr/bin/env cwl-runner

baseCommand:
- fastadigest.py
class: CommandLineTool
cwlVersion: v1.0
id: fastadigest.py
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
- doc: Only return unique peptides per cleavage
  id: unique
  inputBinding:
    prefix: --unique
  type: boolean
