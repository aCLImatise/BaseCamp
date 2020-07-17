class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bamToGBrowse.pl.cwl
inputs:
- id: bed_graph_to_bigwig
  doc: -- download from http://hgdownload.cse.ucsc.edu/admin/exe or build from source
    downloadable from http;//hgdownload.cse.ucsc.edu/admin/jksrc.zip
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bamToGBrowse.pl
