class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/digestdb.cwl
inputs:
- id: num_set_minimum
  doc: <num>     set minimum peptide mass (<num> is a float; default=800.00)
  type: boolean
  inputBinding:
    prefix: -l
- id: num_set_number
  doc: <num>     set number of missed cleavages (<num> is an int; default=1)
  type: boolean
  inputBinding:
    prefix: -m
- id: str_residues_cleave
  doc: <str>     residues to cleave after (default="RK" for trypsin)
  type: boolean
  inputBinding:
    prefix: -r
- id: str_dons_digestion
  doc: <str>     don't cleave if next AA (default="P" for trypsin) ** only c-term
    cleavages are support right now so there's no AspN digestion. ** use a dash (-)
    or leave <str> blank for a null character.
  type: boolean
  inputBinding:
    prefix: -n
- id: str_static_modifications
  doc: <str>     static modifications, comma separated of form <mass>@<residue> for
    example -M57.021@C,15.995@M
  type: boolean
  inputBinding:
    prefix: -M
- id: num_mass_type
  doc: <num>     mass type, 0=average, 1=monoisotopic (default)
  type: boolean
  inputBinding:
    prefix: -t
- id: database_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- digestdb
