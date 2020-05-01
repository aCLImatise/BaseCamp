#!/usr/bin/env cwl-runner

baseCommand:
- kruskal_wallis.py
class: CommandLineTool
cwlVersion: v1.0
id: kruskal_wallis.py
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
- doc: Name of the column with groups.
  id: group
  inputBinding:
    prefix: --group
  type: string
- doc: Summaries file. TSV format.
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
