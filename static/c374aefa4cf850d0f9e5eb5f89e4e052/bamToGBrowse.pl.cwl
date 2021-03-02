class: CommandLineTool
id: bamToGBrowse.pl.cwl
inputs:
- id: in_bed_graph_to_bigwig
  doc: "-- download from http://hgdownload.cse.ucsc.edu/admin/exe\nor build from source\
    \ downloadable from\nhttp;//hgdownload.cse.ucsc.edu/admin/jksrc.zip"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bamToGBrowse.pl
