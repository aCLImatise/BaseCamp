class: CommandLineTool
id: bam_readcount.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bam_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: region
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: v
  doc: '[ --version ]                      output the version number'
  type: boolean
  inputBinding:
    prefix: -v
- id: q
  doc: '[ --min-mapping-quality ] arg (=0) minimum mapping quality of reads used  for
    counting.'
  type: boolean
  inputBinding:
    prefix: -q
- id: b
  doc: '[ --min-base-quality ] arg (=0)    minimum base quality at a position to  use
    the read for counting.'
  type: boolean
  inputBinding:
    prefix: -b
- id: d
  doc: '[ --max-count ] arg (=10000000)    max depth to avoid excessive memory  usage.'
  type: boolean
  inputBinding:
    prefix: -d
- id: l
  doc: '[ --site-list ] arg                file containing a list of regions to  report
    readcounts within.'
  type: boolean
  inputBinding:
    prefix: -l
- id: f
  doc: '[ --reference-fasta ] arg          reference sequence in the fasta format.'
  type: boolean
  inputBinding:
    prefix: -f
- id: d
  doc: '[ --print-individual-mapq ] arg    report the mapping qualities as a comma
    separated list.'
  type: boolean
  inputBinding:
    prefix: -D
- id: p
  doc: '[ --per-library ]                  report results by library.'
  type: boolean
  inputBinding:
    prefix: -p
- id: w
  doc: '[ --max-warnings ] arg             maximum number of warnings of each type
    to emit. -1 gives an unlimited number.'
  type: boolean
  inputBinding:
    prefix: -w
- id: i
  doc: '[ --insertion-centric ]            generate indel centric readcounts.  Reads
    containing insertions will not be included in per-base counts'
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- bam-readcount
