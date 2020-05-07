class: CommandLineTool
id: matam_compare_samples.py.cwl
inputs:
- id: samples_file
  doc: A tabulated file with one sample by row. The first column contains the sample
    id (must be unique) The second column contains the fasta path. The abundances
    must be present into this file. The third, the rdp path. Paths can be absolute
    or relative to the current working directory.
  type: string
  inputBinding:
    prefix: --samples_file
- id: ouput_contingency_table
  doc: Output a table with the abundance for each sequence
  type: string
  inputBinding:
    prefix: --ouput_contingency_table
- id: ouput_comparaison_table
  doc: Output a comparaison table (taxonomy vs samples)
  type: string
  inputBinding:
    prefix: --ouput_comparaison_table
outputs: []
cwlVersion: v1.1
baseCommand:
- matam_compare_samples.py
