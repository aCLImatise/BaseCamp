class: CommandLineTool
id: makdbs.cwl
inputs:
- id: in_ignore_abmiguity_code
  doc: ': Ignore abmiguity code'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_bc
  doc: ': C = [e]mbl|[g]enbank|[n]brf|[p]rodb|[s]wiss'
  type: boolean
  inputBinding:
    prefix: -bC
- id: in__include_commentsdescriptions
  doc: ': include comments/descriptions'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_d_name
  doc: ": Body of file names to be created\nIf omitted, default name depending on\
    \ DB type\nIf Name is omitted, taken from 1st source file name"
  type: boolean
  inputBinding:
    prefix: -dName
- id: in_s_srcdir
  doc: ": Directory where source files are located\nIf omitted, srcdir <= {., (null),\
    \ /usr/local/share/spaln/alndbs}"
  type: boolean
  inputBinding:
    prefix: -sSrcdir
- id: in_directory_where_destination
  doc: ": Directory where destination files are located\nIf omitted, dstdir = current\
    \ dir\n*.ent, *.grp, *idx, (*.odr), and *.seq files are made in this directory"
  type: boolean
  inputBinding:
    prefix: -pdstdir
- id: in_dna_protein_sequence
  doc: '[D|P] : DNA or Protein sequence'
  type: boolean
  inputBinding:
    prefix: -K
- id: in_var_7
  doc: ''
  type: boolean
  inputBinding:
    prefix: -pDstdir
- id: in_d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- makdbs
