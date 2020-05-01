#!/usr/bin/env cwl-runner

baseCommand:
- anova_fixed.py
class: CommandLineTool
cwlVersion: v1.0
id: anova_fixed.py
inputs:
- doc: Output file name.
  id: out
  inputBinding:
    prefix: --out
  type: string
- doc: Flags file name.
  id: flags
  inputBinding:
    prefix: --flags
  type: string
- doc: Output figure name for q-q plots [pdf].
  id: fig
  inputBinding:
    prefix: --fig
  type: string
- doc: Output figure name for volcano plots [pdf].
  id: fig2
  inputBinding:
    prefix: --fig2
  type: string
