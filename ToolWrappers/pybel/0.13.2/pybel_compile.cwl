class: CommandLineTool
id: pybel_compile.cwl
inputs:
- id: in_allow_naked_names
  doc: "Enable lenient parsing for naked names\n--allow-nested                  Enable\
    \ lenient parsing for nested statements\n--disallow-unqualified-translocations\n\
    Disallow unqualified translocations\n--no-identifier-validation      Turn off\
    \ identifier validation\n--no-citation-clearing          Turn off citation clearing\n\
    -r, --required-annotations TEXT\nSpecify multiple required annotations\n--skip-tqdm\n\
    -v, --verbose\n--help                          Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --allow-naked-names
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pybel
- compile
