class: CommandLineTool
id: ../../../hp_demo.cwl
inputs:
- id: in_githubcomgwcbihaphpipeblobmasterbinrefstargzrawtrue__haphpipedemorefstargz
  doc: "://github.com/gwcbi/haphpipe/blob/master/bin/refs.tar.gz?raw=true \\\n> ./haphpipe_demo/refs.tar.gz"
  type: string
  inputBinding:
    prefix: -L
- id: in_xzvf
  doc: \
  type: string
  inputBinding:
    prefix: -xzvf
- id: in_haphpipedemo
  doc: ./haphpipe_demo
  type: boolean
  inputBinding:
    prefix: -C
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hp_demo
