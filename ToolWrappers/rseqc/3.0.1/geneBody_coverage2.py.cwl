class: CommandLineTool
id: geneBody_coverage2.py.cwl
inputs:
- id: in_input_file
  doc: Coverage signal file in bigwig format
  type: File
  inputBinding:
    prefix: --input-file
- id: in_ref_gene
  doc: Reference gene model in bed format. [required]
  type: string
  inputBinding:
    prefix: --refgene
- id: in_out_prefix
  doc: Prefix of output files(s). [required]
  type: string
  inputBinding:
    prefix: --out-prefix
- id: in_graph_type
  doc: "Graphic file type in \"pdf\", \"jpeg\", \"bmp\", \"bmp\",\n\"tiff\" or \"\
    png\".default=pdf [optional]\n"
  type: File
  inputBinding:
    prefix: --graph-type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- geneBody_coverage2.py
