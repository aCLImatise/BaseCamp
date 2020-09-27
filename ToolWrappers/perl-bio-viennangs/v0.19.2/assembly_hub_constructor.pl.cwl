class: CommandLineTool
id: assembly_hub_constructor.pl.cwl
inputs:
- id: in_fa
  doc: Input file in Fasta format.
  type: boolean
  inputBinding:
    prefix: --fa
- id: in_in_folder
  doc: "Directory which contains all track files in BED/bigBed format. The\nresulting\
    \ Assembly Hub will contain these files in their respective\nbigFile version."
  type: boolean
  inputBinding:
    prefix: --infolder
- id: in_out
  doc: Destination folder for the output Assembly Hub.
  type: Directory
  inputBinding:
    prefix: --out
- id: in_baseurl
  doc: "BaseURL used within the Assembly Hub. This URL will be included\nverbatim\
    \ in the resulting Assembly Hub. It is crucial that this URl\nis valid, else the\
    \ resulting Assembly Hub will be broken."
  type: boolean
  inputBinding:
    prefix: --baseurl
- id: in_bigwigs
  doc: "URLs pointing to big wig files to be included in the trackhub.\nMultiple URLs\
    \ are separated by the star character #. It is possible\nto create a multiwig\
    \ container by providing 2 URLs instead of one\nseparated by comma character ,.\
    \ E.g.\nhttp://foo.com/bar.bw,http://foo.com/bar2.bw#http://foo.com/bar3.bw\n\
    yields a multi big wig container displaying bar as positive reads in\ngreen and\
    \ bar2 as negative 3 red colored reads in the same track and\nadditionally bar3\
    \ in an own track colored blue."
  type: boolean
  inputBinding:
    prefix: --bigwigs
- id: in_man
  doc: "Prints the manual page and exits.\n"
  type: boolean
  inputBinding:
    prefix: --man
- id: in_url
  doc: ''
  type: boolean
  inputBinding:
    prefix: -URL
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Destination folder for the output Assembly Hub.
  type: Directory
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- assembly_hub_constructor.pl
