class: CommandLineTool
id: digestdb.cwl
inputs:
- id: l
  doc: <num>     set minimum peptide mass (<num> is a float; default=800.00)
  type: boolean
  inputBinding:
    prefix: -l
- id: m
  doc: <num>     set number of missed cleavages (<num> is an int; default=1)
  type: boolean
  inputBinding:
    prefix: -m
- id: r
  doc: <str>     residues to cleave after (default="RK" for trypsin)
  type: boolean
  inputBinding:
    prefix: -r
- id: n
  doc: <str>     don't cleave if next AA (default="P" for trypsin) ** only c-term
    cleavages are support right now so there's no AspN digestion. ** use a dash (-)
    or leave <str> blank for a null character.
  type: boolean
  inputBinding:
    prefix: -n
- id: m
  doc: <str>     static modifications, comma separated of form <mass>@<residue> for
    example -M57.021@C,15.995@M
  type: boolean
  inputBinding:
    prefix: -M
- id: t
  doc: <num>     mass type, 0=average, 1=monoisotopic (default)
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- digestdb
