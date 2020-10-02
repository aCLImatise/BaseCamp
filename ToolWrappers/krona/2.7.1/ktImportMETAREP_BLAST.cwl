class: CommandLineTool
id: ktImportMETAREP_BLAST.cwl
inputs:
- id: in_meta_rep_folder
  doc: "Unpacked METAREP data folder. By default, separate datasets\nwill be created\
    \ for each input (see [-c])."
  type: string
  inputBinding:
    position: 0
- id: in_name
  doc: "A name to show in the list of datasets in the Krona chart\n(if multiple input\
    \ files are present and [-c] is not\nspecified). By default, the basename of the\
    \ file will be\nused.\n_________"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ktImportMETAREP-BLAST
