#!/usr/bin/env cwl-runner

baseCommand:
- main_cli.py
class: CommandLineTool
cwlVersion: v1.0
id: main_cli.py
inputs:
- doc: Path to proteinA.pdb
  id: prot_a
  inputBinding:
    prefix: --protA
  type: string
- doc: Path to proteinB.pdb
  id: prot_b
  inputBinding:
    prefix: --protB
  type: string
- doc: proteinA chain
  id: prot_a_chain
  inputBinding:
    prefix: --protA_chain
  type: string
- doc: proteinB chain
  id: prot_b_chain
  inputBinding:
    prefix: --protB_chain
  type: string
- doc: Create tab separated map files
  id: tabular
  inputBinding:
    prefix: --tabular
  type: boolean
