#!/usr/bin/env cwl-runner

baseCommand:
- matam_compare_samples.py
class: CommandLineTool
cwlVersion: v1.0
id: matam_compare_samples.py
inputs:
- doc: A tabulated file with one sample by row. The first column contains the sample
    id (must be unique) The second column contains the fasta path. The abundances
    must be present into this file. The third, the rdp path. Paths can be absolute
    or relative to the current working directory.
  id: samples_file
  inputBinding:
    prefix: --samples_file
  type: string
- doc: Output a table with the abundance for each sequence
  id: ouput_contingency_table
  inputBinding:
    prefix: --ouput_contingency_table
  type: string
- doc: Output a comparaison table (taxonomy vs samples)
  id: ouput_comparaison_table
  inputBinding:
    prefix: --ouput_comparaison_table
  type: string
