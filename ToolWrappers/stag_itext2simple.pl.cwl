class: CommandLineTool
id: stag_itext2simple.pl.cwl
inputs:
- id: in_help
  doc: "processed in rearrange(), did you use a\nnon-recognized parameter name ? \
    \ at /usr/local/lib/site_perl/5.26.2/Data/Stag/BaseGenerator.pm line 454."
  type: double
  inputBinding:
    prefix: -HELP
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- stag-itext2simple.pl
