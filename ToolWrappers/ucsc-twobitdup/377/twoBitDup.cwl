class: CommandLineTool
id: twoBitDup.cwl
inputs:
- id: in_key_list
  doc: "- file to write a key list, two columns: md5sum and sequenceName\nNOTE: use\
    \ of keyList is very time expensive for 2bit files\nwith a large number of sequences\
    \ (> 5,000).  Better to\nuse a cluster run with the doIdKeys.pl automation script."
  type: File
  inputBinding:
    prefix: -keyList
- id: in_udc_dir
  doc: =/dir/to/cache - place to put cache for remote bigBed/bigWigs
  type: boolean
  inputBinding:
    prefix: -udcDir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- twoBitDup
