class: CommandLineTool
id: sequenza_utils_seqz_binning.cwl
inputs:
- id: in_seq_z
  doc: A seqz file.
  type: File
  inputBinding:
    prefix: --seqz
- id: in_window
  doc: "Window size used for binning the original seqz file.\nDefault is 50."
  type: long
  inputBinding:
    prefix: --window
- id: in_output_file_stdout
  doc: Output file "-" for STDOUT
  type: File
  inputBinding:
    prefix: -o
- id: in_tab_ix
  doc: "Path of the tabix binary. Default \"tabix\"\n"
  type: File
  inputBinding:
    prefix: --tabix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_stdout
  doc: Output file "-" for STDOUT
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_stdout)
cwlVersion: v1.1
baseCommand:
- sequenza-utils
- seqz_binning
