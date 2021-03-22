class: CommandLineTool
id: runCA.cwl
inputs:
- id: in_use_dir_working
  doc: Use <dir> as the working directory.  Required
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_use_prefix_prefix
  doc: Use <prefix> as the output prefix.  Required
  type: string?
  inputBinding:
    prefix: -p
- id: in_read_options_specifications
  doc: "Read options from the specifications file <specfile>.\n<specfile> can also\
    \ be one of the following key words:\n[no]OBT - run with[out] OBT\nnoVec   - run\
    \ with OBT but without Vector"
  type: File?
  inputBinding:
    prefix: -s
- id: in_version
  doc: Version information
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_options
  doc: Describe specFile options, and show default values
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_frg
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_read_options_specifications
  doc: "Read options from the specifications file <specfile>.\n<specfile> can also\
    \ be one of the following key words:\n[no]OBT - run with[out] OBT\nnoVec   - run\
    \ with OBT but without Vector"
  type: File?
  outputBinding:
    glob: $(inputs.in_read_options_specifications)
hints: []
cwlVersion: v1.1
baseCommand:
- runCA
