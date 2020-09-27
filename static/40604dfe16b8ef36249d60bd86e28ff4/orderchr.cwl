class: CommandLineTool
id: orderchr.cwl
inputs:
- id: in_karyotype
  doc: "{ -shuffle_file chrs_to_shuffle.txt | -shuffle LIST | -shuffle_rx REGEX_LIST\
    \ }\n{-static LIST} {-static_rx REGEX_LIST}\n{-init_order LIST} {-init_order_rx\
    \ REGEX_LIST}\n"
  type: string
  inputBinding:
    prefix: -karyotype
- id: in_links
  doc: ''
  type: File
  inputBinding:
    prefix: -links
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- orderchr
