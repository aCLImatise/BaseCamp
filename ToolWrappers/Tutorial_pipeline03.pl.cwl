class: CommandLineTool
id: Tutorial_pipeline03.pl.cwl
inputs:
- id: in_out
  doc: Destination folder for the output Track Hub.
  type: Directory
  inputBinding:
    prefix: --out
- id: in_baseurl
  doc: "BaseURL used within the Track Hub. This URL will be included\nverbatim in\
    \ the resulting Track Hub. It is crucial that this URl is\nvalid, else the resulting\
    \ Track Hub will be broken."
  type: boolean
  inputBinding:
    prefix: --baseurl
- id: in_big_beds
  doc: "URLs pointing to big bed files to be included in the trackhub.\nMultiple URLs\
    \ are separated by the character #."
  type: boolean
  inputBinding:
    prefix: --bigbeds
- id: in_bigwigs
  doc: "URLs pointing to big wig files to be included in the trackhub.\nMultiple URLs\
    \ are separated by the character #. It is possible to\ncreate a multiwig container\
    \ by providing 2 URLs instead of one\nseparated by comma character ,. E.g.\nhttp://foo.com/bar.bw,http://foo.com/bar2.bw#http://foo.com/bar3.bw\n\
    yields a multi big wig container displaying bar as positive reads in\ngreen and\
    \ bar2 as negative 3 red colored reads in the same track and\nadditionally bar3\
    \ in an own track colored blue."
  type: boolean
  inputBinding:
    prefix: --bigwigs
- id: in_man
  doc: "Prints the manual page and exits\n"
  type: boolean
  inputBinding:
    prefix: --man
- id: in_i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -I
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_url
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Destination folder for the output Track Hub.
  type: Directory
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- Tutorial_pipeline03.pl
