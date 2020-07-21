class: CommandLineTool
id: ../../../tracy_decompose.cwl
inputs:
- id: arg_gzipped_fasta
  doc: '[ --genome ] arg                 (gzipped) fasta or wildtype ab1 file'
  type: boolean
  inputBinding:
    prefix: -r
- id: arg_peak_ratio
  doc: '[ --pratio ] arg (=0.330000013)  peak ratio to call base'
  type: boolean
  inputBinding:
    prefix: -p
- id: arg_kmer_size
  doc: '[ --kmer ] arg (=15)             kmer size'
  type: boolean
  inputBinding:
    prefix: -k
- id: arg_min_kmer
  doc: '[ --support ] arg (=3)           min. kmer support'
  type: boolean
  inputBinding:
    prefix: -s
- id: arg_max_indel
  doc: '[ --maxindel ] arg (=1000)       max. indel size in Sanger trace'
  type: boolean
  inputBinding:
    prefix: -i
- id: a
  doc: '[ --annotate ] arg               annotate variants [homo_sapiens|homo_sapi
    ens_hg19|mus_musculus|danio_rerio|...]'
  type: boolean
  inputBinding:
    prefix: -a
- id: call_variants_trace
  doc: '[ --callVariants ]               call variants in trace'
  type: boolean
  inputBinding:
    prefix: -v
- id: arg_gap_open
  doc: '[ --gapopen ] arg (=-10)         gap open'
  type: boolean
  inputBinding:
    prefix: -g
- id: arg_gap_extension
  doc: '[ --gapext ] arg (=-4)           gap extension'
  type: boolean
  inputBinding:
    prefix: -e
- id: _arg_match
  doc: '[ --match ] arg (=3)             match'
  type: boolean
  inputBinding:
    prefix: -m
- id: _arg_mismatch
  doc: '[ --mismatch ] arg (=-5)         mismatch'
  type: boolean
  inputBinding:
    prefix: -n
- id: use_trimleft_trimright
  doc: '[ --trim ] arg (=0)              trimming stringency [1:9], 0: use  trimLeft
    and trimRight'
  type: boolean
  inputBinding:
    prefix: -t
- id: arg_trim_size_left
  doc: '[ --trimLeft ] arg (=50)         trim size left'
  type: boolean
  inputBinding:
    prefix: -q
- id: arg_trim_size_right
  doc: '[ --trimRight ] arg (=50)        trim size right'
  type: boolean
  inputBinding:
    prefix: -u
- id: arg_alignment_line
  doc: '[ --linelimit ] arg (=60)        alignment line length'
  type: boolean
  inputBinding:
    prefix: -l
- id: arg_output_prefix
  doc: '[ --outprefix ] arg (=out)       output prefix'
  type: boolean
  inputBinding:
    prefix: -o
- id: trace_do_tab_one
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tracy
- decompose
