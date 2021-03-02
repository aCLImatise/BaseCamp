class: CommandLineTool
id: dumpFeatures.cwl
inputs:
- id: in_report_contig_iids
  doc: report contig iids instead of eids
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_report_coordinates_instread
  doc: report ungapped coordinates instread of gapped coordinates
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_report_features_gff
  doc: report features in .gff format
  type: boolean?
  inputBinding:
    prefix: -g
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dumpFeatures
