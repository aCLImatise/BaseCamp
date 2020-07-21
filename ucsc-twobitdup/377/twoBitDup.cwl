class: CommandLineTool
id: ../../../twoBitDup.cwl
inputs:
- id: key_list
  doc: '- file to write a key list, two columns: md5sum and sequenceName NOTE: use
    of keyList is very time expensive for 2bit files with a large number of sequences
    (> 5,000).  Better to use a cluster run with the doIdKeys.pl automation script.'
  type: File
  inputBinding:
    prefix: -keyList
- id: udc_dir
  doc: =/dir/to/cache - place to put cache for remote bigBed/bigWigs
  type: boolean
  inputBinding:
    prefix: -udcDir
- id: file_dot_two_bit
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- twoBitDup
