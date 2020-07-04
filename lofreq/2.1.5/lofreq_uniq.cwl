class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/lofreq_uniq.cwl
inputs:
- id: _file_file
  doc: '| --vcf-in FILE      Input vcf file listing variants [- = stdin; gzip supported]'
  type: boolean
  inputBinding:
    prefix: -v
- id: _file_output
  doc: '| --vcf-out FILE     Output vcf file [- = stdout; gzip supported]'
  type: boolean
  inputBinding:
    prefix: -o
- id: _unifreq_assume
  doc: '| --uni-freq         Assume variants have uniform test frequency of this value
    (unused if <=0) [-1.000000]'
  type: boolean
  inputBinding:
    prefix: -f
- id: _uniqthresh_int
  doc: '| --uniq-thresh INT  Minimum uniq phred-value required. Conflicts with -m.
    0 for off (default=0)'
  type: boolean
  inputBinding:
    prefix: -t
- id: _uniqmtc_string
  doc: "| --uniq-mtc STRING  Uniq multiple testing correction type. One of 'bonf',\
    \ 'holm' or 'fdr'. (default=MTC_FDR)"
  type: boolean
  inputBinding:
    prefix: -m
- id: _uniqalpha_float
  doc: '| --uniq-alpha FLOAT Uniq Multiple testing correction p-value threshold (default=0.001000)'
  type: boolean
  inputBinding:
    prefix: -a
- id: _uniqntests_int
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
- id: indexed_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- lofreq
- uniq
