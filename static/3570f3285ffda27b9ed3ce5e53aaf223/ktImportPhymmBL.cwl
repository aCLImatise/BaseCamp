class: CommandLineTool
id: ktImportPhymmBL.cwl
inputs:
- id: in_phy_mm_bl_results
  doc: "PhymmBL results files (results.03.*). Results can also be\nfrom Phymm alone\
    \ (results.01.*), but [-p] must be\nspecified. By default, separate datasets will\
    \ be created\nfor each input (see [-c])."
  type: string
  inputBinding:
    position: 0
- id: in_magnitudes
  doc: "Optional file listing query IDs with magnitudes, separated\nby tabs. This\
    \ can be used to account for read length or\ncontig depth to obtain a more accurate\
    \ representation of\nabundance. By default, query sequences without specified\n\
    magnitudes will be assigned a magnitude of 1. Magnitude\nfiles for assemblies\
    \ in ACE format can be created with\nktGetContigMagnitudes."
  type: string
  inputBinding:
    position: 1
- id: in_name
  doc: "A name to show in the list of datasets in the Krona chart\n(if multiple input\
    \ files are present and [-c] is not\nspecified). By default, the basename of the\
    \ file will be\nused.\n_________"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ktImportPhymmBL
