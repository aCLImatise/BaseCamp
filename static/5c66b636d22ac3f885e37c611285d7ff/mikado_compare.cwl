class: CommandLineTool
id: mikado_compare.cwl
inputs:
- id: in_reference
  doc: "Reference annotation file. By default, an index will\nbe crated and saved\
    \ with the suffix \".midx\"."
  type: File
  inputBinding:
    prefix: --reference
- id: in_prediction
  doc: Prediction annotation file.
  type: File
  inputBinding:
    prefix: --prediction
- id: in_self
  doc: "Flag. If set, the reference will be compared with\nitself. Useful for understanding\
    \ how the reference\ntranscripts interact with each other. If this option\nis\
    \ selected, the stats file will not be produced."
  type: boolean
  inputBinding:
    prefix: --self
- id: in_internal
  doc: "Flag. If set, for each gene with more than one\ntranscript isoform each will\
    \ be compared to the\nothers. Useful for understanding the structural\nrelationships\
    \ between the transcripts in each gene."
  type: boolean
  inputBinding:
    prefix: --internal
- id: in_index
  doc: "Flag. If set, compare will stop after having generated\nthe GFF index for\
    \ the reference.\n"
  type: boolean
  inputBinding:
    prefix: --index
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mikado
- compare
