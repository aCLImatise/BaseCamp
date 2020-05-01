#!/usr/bin/env cwl-runner

baseCommand:
- ttest_single_group.py
class: CommandLineTool
cwlVersion: v1.0
id: ttest_single_group.py
inputs:
- doc: Input dataset in wide format.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Design file.
  id: design
  inputBinding:
    prefix: --design
  type: string
- doc: Name of the column with unique identifiers.
  id: unique_id
  inputBinding:
    prefix: --uniqueID
  type: string
- doc: Name of the column with group variable.
  id: group
  inputBinding:
    prefix: --group
  type: string
- doc: Mu value for the null.
  id: mu
  inputBinding:
    prefix: --mu
  type: string
- doc: Summaries file name. TSV format.
  id: summaries
  inputBinding:
    prefix: --summaries
  type: string
- doc: Flags file. TSV format.
  id: flags
  inputBinding:
    prefix: --flags
  type: string
- doc: Volcano plot. PDF Format.
  id: volcano
  inputBinding:
    prefix: --volcano
  type: string
- doc: Name of the palette to use.
  id: palette
  inputBinding:
    prefix: --palette
  type: string
- doc: Name of a valid color scheme on the selected palette
  id: color
  inputBinding:
    prefix: --color
  type: string
