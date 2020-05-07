class: CommandLineTool
id: msisensor_msi.cwl
inputs:
- id: d
  doc: <string>   homopolymer and microsates file
  type: boolean
  inputBinding:
    prefix: -d
- id: n
  doc: <string>   normal bam file
  type: boolean
  inputBinding:
    prefix: -n
- id: t
  doc: <string>   tumor  bam file
  type: boolean
  inputBinding:
    prefix: -t
- id: o
  doc: <string>   output distribution file
  type: boolean
  inputBinding:
    prefix: -o
- id: e
  doc: <string>   bed file, optional
  type: boolean
  inputBinding:
    prefix: -e
- id: f
  doc: <double>   FDR threshold for somatic sites detection, default=0.05
  type: boolean
  inputBinding:
    prefix: -f
- id: i
  doc: <double>   minimal comentropy threshold for somatic sites detection (just for
    tumor only data), default=1
  type: boolean
  inputBinding:
    prefix: -i
- id: c
  doc: '<int>      coverage threshold for msi analysis, WXS: 20; WGS: 15, default=20'
  type: boolean
  inputBinding:
    prefix: -c
- id: r
  doc: '<string>   choose one region, format: 1:10000000-20000000'
  type: boolean
  inputBinding:
    prefix: -r
- id: l
  doc: <int>      minimal homopolymer size, default=5
  type: boolean
  inputBinding:
    prefix: -l
- id: p
  doc: <int>      minimal homopolymer size for distribution analysis, default=10
  type: boolean
  inputBinding:
    prefix: -p
- id: m
  doc: <int>      maximal homopolymer size for distribution analysis, default=50
  type: boolean
  inputBinding:
    prefix: -m
- id: q
  doc: <int>      minimal microsates size, default=3
  type: boolean
  inputBinding:
    prefix: -q
- id: s
  doc: <int>      minimal microsates size for distribution analysis, default=5
  type: boolean
  inputBinding:
    prefix: -s
- id: w
  doc: <int>      maximal microstaes size for distribution analysis, default=40
  type: boolean
  inputBinding:
    prefix: -w
- id: u
  doc: <int>      span size around window for extracting reads, default=500
  type: boolean
  inputBinding:
    prefix: -u
- id: b
  doc: <int>      threads number for parallel computing, default=1
  type: boolean
  inputBinding:
    prefix: -b
- id: x
  doc: '<int>      output homopolymer only, 0: no; 1: yes, default=0'
  type: boolean
  inputBinding:
    prefix: -x
- id: y
  doc: '<int>      output microsatellite only, 0: no; 1: yes, default=0'
  type: boolean
  inputBinding:
    prefix: -y
outputs: []
cwlVersion: v1.1
baseCommand:
- msisensor
- msi
