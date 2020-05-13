class: CommandLineTool
id: alfred_consensus.cwl
inputs:
- id: f
  doc: '[ --format ] arg (=bam)            input format [bam|fasta]'
  type: boolean
  inputBinding:
    prefix: -f
- id: d
  doc: '[ --called ] arg (=0.5)            fraction of reads required for  consensus'
  type: boolean
  inputBinding:
    prefix: -d
- id: t
  doc: '[ --seqtype ] arg (=ill)           seq. type [ill|ont|pacbio|custom]'
  type: boolean
  inputBinding:
    prefix: -t
- id: q
  doc: '[ --mapqual ] arg (=10)            min. mapping quality'
  type: boolean
  inputBinding:
    prefix: -q
- id: p
  doc: '[ --position ] arg (=chr4:500500)  position to generate consensus'
  type: boolean
  inputBinding:
    prefix: -p
- id: w
  doc: '[ --window ] arg (=5)              window around position to fetch reads'
  type: boolean
  inputBinding:
    prefix: -w
- id: s
  doc: '[ --secondary ]                    consider secondary alignments'
  type: boolean
  inputBinding:
    prefix: -s
- id: r
  doc: '[ --trimreads ]                    trim reads to window'
  type: boolean
  inputBinding:
    prefix: -r
- id: g
  doc: '[ --gapopen ] arg (=-10)           gap open'
  type: boolean
  inputBinding:
    prefix: -g
- id: e
  doc: '[ --gapext ] arg (=-1)             gap extension'
  type: boolean
  inputBinding:
    prefix: -e
- id: m
  doc: '[ --match ] arg (=5)               match'
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: '[ --mismatch ] arg (=-4)           mismatch'
  type: boolean
  inputBinding:
    prefix: -n
- id: u
  doc: '[ --outformat ] arg (=v)           output format [v|h]'
  type: boolean
  inputBinding:
    prefix: -u
- id: a
  doc: '[ --alignment ] arg (="al.fa.gz")  vertical/horizontal alignment'
  type: boolean
  inputBinding:
    prefix: -a
- id: c
  doc: '[ --consensus ] arg (="cs.fa.gz")  consensus'
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- alfred
- consensus
