class: CommandLineTool
id: lofreq_uniq.cwl
inputs:
- id: indexed_in_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: v
  doc: '| --vcf-in FILE      Input vcf file listing variants [- = stdin; gzip supported]'
  type: boolean
  inputBinding:
    prefix: -v
- id: o
  doc: '| --vcf-out FILE     Output vcf file [- = stdout; gzip supported]'
  type: boolean
  inputBinding:
    prefix: -o
- id: f
  doc: '| --uni-freq         Assume variants have uniform test frequency of this value
    (unused if <=0) [-1.000000]'
  type: boolean
  inputBinding:
    prefix: -f
- id: t
  doc: '| --uniq-thresh INT  Minimum uniq phred-value required. Conflicts with -m.
    0 for off (default=0)'
  type: boolean
  inputBinding:
    prefix: -t
- id: m
  doc: "| --uniq-mtc STRING  Uniq multiple testing correction type. One of 'bonf',\
    \ 'holm' or 'fdr'. (default=MTC_FDR)"
  type: boolean
  inputBinding:
    prefix: -m
- id: a
  doc: '| --uniq-alpha FLOAT Uniq Multiple testing correction p-value threshold (default=0.001000)'
  type: boolean
  inputBinding:
    prefix: -a
- id: n
  doc: "| --uniq-ntests INT  Uniq multiple testing correction p-value threshold (default=#vars)\
    \ --output-all       Report all variants instead of only the ones, marked unique.\
    \ Note, that variants already filtered in input will not be printed. --use-det-lim\
    \      Report variants if they are above implied detection limit Default is to\
    \ use binomial test to check for frequency differences --use-orphan       Don't\
    \ ignore anomalous read pairs / orphan reads --verbose          Be verbose --debug\
    \            Enable debugging"
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- lofreq
- uniq
