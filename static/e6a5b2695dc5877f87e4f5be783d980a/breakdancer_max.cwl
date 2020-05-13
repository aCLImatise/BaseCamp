class: CommandLineTool
id: breakdancer_max.cwl
inputs:
- id: analysis_config
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: o
  doc: operate on a single chromosome [all chromosome]
  type: string
  inputBinding:
    prefix: -o
- id: s
  doc: minimum length of a region [7]
  type: long
  inputBinding:
    prefix: -s
- id: c
  doc: cutoff in unit of standard deviation [3]
  type: long
  inputBinding:
    prefix: -c
- id: m
  doc: maximum SV size [1000000000]
  type: long
  inputBinding:
    prefix: -m
- id: q
  doc: minimum alternative mapping quality [35]
  type: long
  inputBinding:
    prefix: -q
- id: r
  doc: minimum number of read pairs required to establish a connection [2]
  type: long
  inputBinding:
    prefix: -r
- id: x
  doc: maximum threshold of haploid sequence coverage for regions to be ignored [1000]
  type: long
  inputBinding:
    prefix: -x
- id: b
  doc: buffer size for building connection [100]
  type: long
  inputBinding:
    prefix: -b
- id: t
  doc: only detect transchromosomal rearrangement, by default off
  type: boolean
  inputBinding:
    prefix: -t
- id: d
  doc: prefix of fastq files that SV supporting reads will be saved by library
  type: string
  inputBinding:
    prefix: -d
- id: g
  doc: dump SVs and supporting reads in BED format for GBrowse
  type: string
  inputBinding:
    prefix: -g
- id: l
  doc: analyze Illumina long insert (mate-pair) library
  type: boolean
  inputBinding:
    prefix: -l
- id: a
  doc: print out copy number and support reads per library rather than per bam, by
    default off
  type: boolean
  inputBinding:
    prefix: -a
- id: y
  doc: output score filter [30]
  type: long
  inputBinding:
    prefix: -y
outputs: []
cwlVersion: v1.1
baseCommand:
- breakdancer-max
