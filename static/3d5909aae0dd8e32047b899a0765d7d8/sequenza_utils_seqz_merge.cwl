class: CommandLineTool
id: sequenza_utils_seqz_merge.cwl
inputs:
- id: in_output
  doc: "Output file. For gzip compressed output name the file\nending in .gz. Default\
    \ STDOUT"
  type: File
  inputBinding:
    prefix: --output
- id: in_seq_zone
  doc: "First input file. If both input files contain the same\nline, the information\
    \ in the first file will be used"
  type: long
  inputBinding:
    prefix: --seqz1
- id: in_seq_z_two
  doc: Second input file
  type: long
  inputBinding:
    prefix: --seqz2
- id: in_tab_ix
  doc: "Path of the tabix binary. Default \"tabix\"\n"
  type: File
  inputBinding:
    prefix: --tabix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file. For gzip compressed output name the file\nending in .gz. Default\
    \ STDOUT"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- sequenza-utils
- seqz_merge
