class: CommandLineTool
id: deepac_explain_weblogos.cwl
inputs:
- id: in_in_dir
  doc: Directory containing motifs per filter
  type: Directory
  inputBinding:
    prefix: --in-dir
- id: in_extension_file_format
  doc: "{.fasta,.transfac}, --file-ext {.fasta,.transfac}\nExtension of file format\
    \ of input files (.fasta or\n.transfac)"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_train_data
  doc: "Training data set (.npy) to compute GC-content.\nN-padding lowers GC!"
  type: string
  inputBinding:
    prefix: --train-data
- id: in_out_dir
  doc: "Output directory\n"
  type: Directory
  inputBinding:
    prefix: --out-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: "Output directory\n"
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_dir)
cwlVersion: v1.1
baseCommand:
- deepac
- explain
- weblogos
