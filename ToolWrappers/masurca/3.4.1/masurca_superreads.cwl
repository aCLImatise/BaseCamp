class: CommandLineTool
id: masurca_superreads.cwl
inputs:
- id: in_output_dir
  doc: "Create the super reads in the directory given by PATH. Create\nthe directory\
    \ if it does not exists.\n"
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_fragonedotfqdotgz
  doc: Unmated library
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- masurca-superreads
