class: CommandLineTool
id: matam_compare_samples.py.cwl
inputs:
- id: in_samples_file
  doc: "A tabulated file with one sample by row. The first\ncolumn contains the sample\
    \ id (must be unique) The\nsecond column contains the fasta path. The abundances\n\
    must be present into this file. The third, the rdp\npath. Paths can be absolute\
    \ or relative to the current\nworking directory."
  type: File
  inputBinding:
    prefix: --samples_file
- id: in_ouput_contingency_table
  doc: Output a table with the abundance for each sequence
  type: string
  inputBinding:
    prefix: --ouput_contingency_table
- id: in_output_comparaison_taxonomy
  doc: "Output a comparaison table (taxonomy vs samples)\n"
  type: string
  inputBinding:
    prefix: --ouput_comparaison_table
- id: in_script_let_compare
  doc: This script let you compare two or more samples coming from MATAM -- v1.5.1
    or
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- matam_compare_samples.py
