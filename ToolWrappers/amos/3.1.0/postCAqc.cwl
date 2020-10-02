class: CommandLineTool
id: postCAqc.cwl
inputs:
- id: in_frgfile_asmfile_required
  doc: (frgfile) and -a (asmfile) are required
  type: boolean
  inputBinding:
    prefix: -f
- id: in_reference_allows_specify
  doc: "(reference) allows to specify a reference molecule against which all\nreads\
    \ are placed"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_circ
  doc: "really only be used with -r and specifies the reference\nmolecule is circular"
  type: string
  inputBinding:
    prefix: -circ
- id: in_inserts_file_d
  doc: "(.inserts file) and -d (dstmap) allow to specify a map from the library\n\
    ids listed in the .frg file to database ids (cat_nos).  The inserts\nfile is automatically\
    \ generated by pullfrag and the dstmap is\nautomatically generated by pfl.pl.\n"
  type: boolean
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- postCAqc
