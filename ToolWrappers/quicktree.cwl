class: CommandLineTool
id: quicktree.cwl
inputs:
- id: in_in
  doc: ": input file is a distance matrix in phylip format (m)\nor an alignment in\
    \ stockholm format* (a, default)"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: ": output is a distance matrix in phylip format (m) or\na tree in New Hampshire\
    \ format"
  type: string
  inputBinding:
    prefix: -out
- id: in_upgma
  doc: ": Use the UPGMA method to construct the tree\n(ignored for distance matrix\
    \ outputs)"
  type: boolean
  inputBinding:
    prefix: -upgma
- id: in_kimura
  doc: ": Use the kimura translation for pairwise distances\n(ignored for distance\
    \ matrix inputs)"
  type: boolean
  inputBinding:
    prefix: -kimura
- id: in_boot
  doc: ": Calcuate bootstrap values with n iterations\n(ignored for distance matrix\
    \ outputs)"
  type: string
  inputBinding:
    prefix: -boot
- id: in_print_version_exit
  doc: ': print version and exit'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_input_file
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
- quicktree
