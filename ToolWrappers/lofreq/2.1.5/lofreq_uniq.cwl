class: CommandLineTool
id: lofreq_uniq.cwl
inputs:
- id: in__vcfin_file
  doc: '| --vcf-in FILE      Input vcf file listing variants [- = stdin; gzip supported]'
  type: boolean
  inputBinding:
    prefix: -v
- id: in__vcfout_file
  doc: '| --vcf-out FILE     Output vcf file [- = stdout; gzip supported]'
  type: File
  inputBinding:
    prefix: -o
- id: in__unifreq_assume
  doc: '| --uni-freq         Assume variants have uniform test frequency of this value
    (unused if <=0) [-1.000000]'
  type: boolean
  inputBinding:
    prefix: -f
- id: in__uniqthresh_int
  doc: '| --uniq-thresh INT  Minimum uniq phred-value required. Conflicts with -m.
    0 for off (default=0)'
  type: boolean
  inputBinding:
    prefix: -t
- id: in__uniqmtc_string
  doc: "| --uniq-mtc STRING  Uniq multiple testing correction type. One of 'bonf',\
    \ 'holm' or 'fdr'. (default=MTC_FDR)"
  type: boolean
  inputBinding:
    prefix: -m
- id: in__uniqalpha_float
  doc: '| --uniq-alpha FLOAT Uniq Multiple testing correction p-value threshold (default=0.001000)'
  type: boolean
  inputBinding:
    prefix: -a
- id: in__uniqntests_int
  doc: '| --uniq-ntests INT  Uniq multiple testing correction p-value threshold (default=#vars)'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_output_all
  doc: "Report all variants instead of only the ones, marked unique.\nNote, that variants\
    \ already filtered in input will not be printed."
  type: boolean
  inputBinding:
    prefix: --output-all
- id: in_use_det_lim
  doc: "Report variants if they are above implied detection limit\nDefault is to use\
    \ binomial test to check for frequency differences"
  type: boolean
  inputBinding:
    prefix: --use-det-lim
- id: in_use_orphan
  doc: Don't ignore anomalous read pairs / orphan reads
  type: boolean
  inputBinding:
    prefix: --use-orphan
- id: in_verbose
  doc: Be verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Enable debugging
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_indexed_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__vcfout_file
  doc: '| --vcf-out FILE     Output vcf file [- = stdout; gzip supported]'
  type: File
  outputBinding:
    glob: $(inputs.in__vcfout_file)
cwlVersion: v1.1
baseCommand:
- lofreq
- uniq
