class: CommandLineTool
id: run_sepp.sh.cwl
inputs:
- id: in_make_us_threads
  doc: "to make SEPP us 8 threads\n"
  type: long
  inputBinding:
    prefix: -x
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- run-sepp.sh
