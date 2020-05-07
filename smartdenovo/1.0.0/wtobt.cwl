class: CommandLineTool
id: wtobt.cwl
inputs:
- id: i
  doc: Long reads sequences file, + *
  type: string
  inputBinding:
    prefix: -i
- id: b
  doc: 'Long reads retained region, often from wtobt/wtcyc, + Format: read_name\toffset\tlength\toriginal_len'
  type: string
  inputBinding:
    prefix: -b
- id: j
  doc: 'Overlap file(s), + * Format: reads1\t+/-\tlen1\tbeg1\tend1\treads2\t+/-\tlen2\tbeg2\tend2\tscore\tidentity<float>\tmat\tmis\tins\tdel\tcigar'
  type: string
  inputBinding:
    prefix: -j
- id: o
  doc: "Ouput of reads' regions after trimming, -:stdout, * Format: read_name\\toffset\\\
    tlength"
  type: boolean
  inputBinding:
    prefix: -o
- id: f
  doc: Force overwrite output file
  type: boolean
  inputBinding:
    prefix: -f
- id: c
  doc: Trun off specical trim for reads contained by others One read (A) will not
    be trimmed when it is contained by another read (B). When trun on special trim
    (by default), if the B read is trimmed, program will accordingly trim A read
  type: boolean
  inputBinding:
    prefix: -C
- id: s
  doc: Minimum score of alignment, [200]
  type: long
  inputBinding:
    prefix: -s
- id: m
  doc: Minimum identity of alignment , [0.5]
  type: double
  inputBinding:
    prefix: -m
- id: w
  doc: Maximum margin of alignment, [200]
  type: long
  inputBinding:
    prefix: -w
- id: c
  doc: Minimum depth of overlap between anchored reads along reference read, to detect
    chimeric reads, [1]
  type: long
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- wtobt
