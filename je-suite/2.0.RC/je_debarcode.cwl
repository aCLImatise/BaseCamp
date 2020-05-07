class: CommandLineTool
id: je_debarcode.cwl
inputs:
- id: sample_1
  doc: ATAT|GAGG:CCAA|TGTG     spl1_1.txt.gz   spl1_2.txt.gz
  type: string
  inputBinding:
    position: 0
- id: paired
  doc: 'with redundant barcode if barcode file describes a single BARCODE '
  type: string
  inputBinding:
    prefix: '- paired'
- id: paired
  doc: 'with non redundant barcode if barcode file describes two BARCODE '
  type: string
  inputBinding:
    prefix: '- paired'
- id: single
  doc: 'with index file if barcode file describes a single BARCODE and second '
  type: string
  inputBinding:
    prefix: '- single'
- id: paired
  doc: 'with an index file i.e. <SAMPLE1:x>, <SAMPLE2:x> and <BARCODE1:X> '
  type: string
  inputBinding:
    prefix: '- paired'
- id: single
  doc: 'with two index files i.e. <SAMPLE1:x>, <BARCODE1:X> and <BARCODE2:Y> '
  type: string
  inputBinding:
    prefix: '- single'
- id: the
  doc: "in the first part (i.e. from '1:' above) is the output file index and it "
  type: string
  inputBinding:
    prefix: '- The'
- id: the
  doc: "part (i.e. '' above) is the read header layout; when writing multiple UMI "
  type: string
  inputBinding:
    prefix: '- The'
- id: the
  doc: "part (i.e. '' above) is the read sequence layout. Note that here  and  are "
  type: string
  inputBinding:
    prefix: '- The'
outputs: []
cwlVersion: v1.1
baseCommand:
- je
- debarcode
