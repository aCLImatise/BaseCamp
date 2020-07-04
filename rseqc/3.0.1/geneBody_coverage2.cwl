class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/geneBody_coverage2.py.cwl
inputs:
- id: input_file
  doc: Coverage signal file in bigwig format
  type: string
  inputBinding:
    prefix: --input-file
- id: ref_gene
  doc: Reference gene model in bed format. [required]
  type: string
  inputBinding:
    prefix: --refgene
- id: out_prefix
  doc: Prefix of output files(s). [required]
  type: string
  inputBinding:
    prefix: --out-prefix
- id: graph_type
  doc: Graphic file type in "pdf", "jpeg", "bmp", "bmp", "tiff" or "png".default=pdf
    [optional]
  type: string
  inputBinding:
    prefix: --graph-type
outputs: []
cwlVersion: v1.1
baseCommand:
- geneBody_coverage2.py
