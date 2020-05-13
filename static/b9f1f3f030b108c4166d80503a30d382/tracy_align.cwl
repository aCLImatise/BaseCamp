class: CommandLineTool
id: tracy_align.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: trace_ab1
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: r
  doc: '[ --reference ] arg              (gzipped) fasta or wildtype ab1 file'
  type: boolean
  inputBinding:
    prefix: -r
- id: p
  doc: '[ --pratio ] arg (=0.330000013)  peak ratio to call base'
  type: boolean
  inputBinding:
    prefix: -p
- id: k
  doc: '[ --kmer ] arg (=15)             kmer size to anchor trace'
  type: boolean
  inputBinding:
    prefix: -k
- id: s
  doc: '[ --support ] arg (=3)           min. kmer support'
  type: boolean
  inputBinding:
    prefix: -s
- id: i
  doc: '[ --maxindel ] arg (=1000)       max. indel size in Sanger trace'
  type: boolean
  inputBinding:
    prefix: -i
- id: g
  doc: '[ --gapopen ] arg (=-10)         gap open'
  type: boolean
  inputBinding:
    prefix: -g
- id: e
  doc: '[ --gapext ] arg (=-4)           gap extension'
  type: boolean
  inputBinding:
    prefix: -e
- id: m
  doc: '[ --match ] arg (=3)             match'
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: '[ --mismatch ] arg (=-5)         mismatch'
  type: boolean
  inputBinding:
    prefix: -n
- id: t
  doc: '[ --trim ] arg (=0)              trimming stringency [1:9], 0: use  trimLeft
    and trimRight'
  type: boolean
  inputBinding:
    prefix: -t
- id: q
  doc: '[ --trimLeft ] arg (=50)         trim size left'
  type: boolean
  inputBinding:
    prefix: -q
- id: u
  doc: '[ --trimRight ] arg (=50)        trim size right'
  type: boolean
  inputBinding:
    prefix: -u
- id: l
  doc: '[ --linelimit ] arg (=60)        alignment line length'
  type: boolean
  inputBinding:
    prefix: -l
- id: o
  doc: '[ --outprefix ] arg (=out)       output prefix'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- tracy
- align
