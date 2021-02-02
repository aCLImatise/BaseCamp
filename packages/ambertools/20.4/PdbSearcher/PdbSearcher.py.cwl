class: CommandLineTool
id: PdbSearcher.py.cwl
inputs:
- id: in_ion
  doc: Element symbol of ion, e.g. Zn
  type: string
  inputBinding:
    prefix: --ion
- id: in_list
  doc: "List file name, list file contains one PDB file name\nper line"
  type: File
  inputBinding:
    prefix: --list
- id: in_env
  doc: "Environment file name. An environment file is used to\nstore the metal center\
    \ environment information such as\nligating atoms, distance, geometry etc. For\
    \ each bond,\nthere is a record."
  type: File
  inputBinding:
    prefix: --env
- id: in_sum
  doc: "Summary file name. A summary file is used to store the\nmetal center summary\
    \ information such as metal center\ngeometry, ligating residues etc. For each\
    \ metal center\nthere is a record."
  type: File
  inputBinding:
    prefix: --sum
- id: in_cut
  doc: "Optional. The cut off value used to detect the bond\nbetween metal ion and\
    \ ligating atoms. The unit is\nAngstroms. If there is no value specified, the\
    \ default\nalgorithm will be used. The default algorithm\nrecognizes the bond\
    \ when its distance is no less than\n0.1 (smaller than 0.1 usually indicates a\
    \ low quality\nstructure) and no bigger than the covalent radius sum\nof the two\
    \ atoms with a tolerance of 0.4.\n"
  type: double
  inputBinding:
    prefix: --cut
- id: in_lslash_list
  doc: ''
  type: File
  inputBinding:
    prefix: -l/--list
- id: in_i_slash_ion
  doc: ''
  type: string
  inputBinding:
    prefix: -i/--ion
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PdbSearcher.py
