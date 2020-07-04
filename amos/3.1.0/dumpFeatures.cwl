class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dumpFeatures.cwl
inputs:
- id: report_contig_iids
  doc: report contig iids instead of eids
  type: boolean
  inputBinding:
    prefix: -i
- id: report_ungapped_coordinates
  doc: report ungapped coordinates instread of gapped coordinates
  type: boolean
  inputBinding:
    prefix: -u
- id: report_features_gff
  doc: report features in .gff format
  type: boolean
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- dumpFeatures
