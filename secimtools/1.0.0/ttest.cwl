#!/usr/bin/env cwl-runner

baseCommand:
- ttest.py
class: CommandLineTool
cwlVersion: v1.0
id: ttest.py
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
- doc: 'Choice of the test: has to be either paired or unpaired.'
  id: pairing
  inputBinding:
    prefix: --pairing
  type: string
- doc: Name of the pairing vaiable if paired option is selected.Not required/ignored
    when unpaired test is selected.
  id: order
  inputBinding:
    prefix: --order
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
