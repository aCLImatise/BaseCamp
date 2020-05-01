#!/usr/bin/env cwl-runner

baseCommand:
- categorize_by_function.py
class: CommandLineTool
cwlVersion: v1.0
id: categorize_by_function.py
inputs:
- doc: the predicted metagenome table [REQUIRED]
  id: input_fp
  inputBinding:
    prefix: --input_fp
  type: string
- doc: the resulting table [REQUIRED]
  id: output_fp
  inputBinding:
    prefix: --output_fp
  type: string
- doc: 'the metadata category that describes the hierarchy (e.g. KEGG_Pathways, COG_Category,
    etc.). Note: RFAM predictions can not be collapsed because there are no categories
    to group them into. [REQUIRED]'
  id: metadata_category
  inputBinding:
    prefix: --metadata_category
  type: string
- doc: the level in the hierarchy to collapse to. A value of 0 is not allowed, a value
    of 1 is the highest level, and any higher value nears the leaves of the hierarchy.
    For instance, if the hierarchy contains 4 levels, specifying 3 would collapse
    at one level above being fully specified. [REQUIRED]
  id: level
  inputBinding:
    prefix: --level
  type: string
