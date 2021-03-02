class: CommandLineTool
id: stag_xml2itext.pl.cwl
inputs:
- id: in_help
  doc: "processed in rearrange(), did you use a\nnon-recognized parameter name ? \
    \ at /usr/local/lib/site_perl/5.26.2/Data/Stag/XMLParser.pm line 45."
  type: double?
  inputBinding:
    prefix: -HELP
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- stag-xml2itext.pl
