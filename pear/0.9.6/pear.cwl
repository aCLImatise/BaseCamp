class: CommandLineTool
id: pear.cwl
inputs:
- id: forward_fast_q
  doc: <str>     Forward paired-end FASTQ file.
  type: boolean
  inputBinding:
    prefix: --forward-fastq
- id: reverse_fast_q
  doc: <str>     Reverse paired-end FASTQ file.
  type: boolean
  inputBinding:
    prefix: --reverse-fastq
- id: output
  doc: <str>     Output filename.
  type: boolean
  inputBinding:
    prefix: --output
- id: p_value
  doc: '<float>   Specify  a p-value for the statistical test. If the computed p-value
    of a possible assembly exceeds the specified p-value then  paired-end  read  will
    not be assembled. Valid options are: 0.0001, 0.001, 0.01, 0.05 and 1.0. Setting
    1.0 disables the test. (default: 0.01)'
  type: boolean
  inputBinding:
    prefix: --p-value
- id: min_overlap
  doc: '<int>     Specify the minimum overlap size. The minimum overlap may be set
    to 1 when the statistical test is used. However, further restricting  the  minimum
    overlap size to a proper value may reduce false-positive assembles. (default:
    10)'
  type: boolean
  inputBinding:
    prefix: --min-overlap
- id: max_assembly_length
  doc: '<int>     Specify   the  maximum  possible  length  of  the  assembled sequences.  Setting
    this value to 0 disables the restriction and assembled sequences may be arbitrary
    long. (default: 0)'
  type: boolean
  inputBinding:
    prefix: --max-assembly-length
- id: min_assembly_length
  doc: '<int>     Specify   the  minimum  possible  length  of  the  assembled sequences.  Setting
    this value to 0 disables the restriction and  assembled  sequences  may be arbitrary
    short. (default: 50)'
  type: boolean
  inputBinding:
    prefix: --min-assembly-length
- id: min_trim_length
  doc: '<int>     Specify  the  minimum length of reads after trimming the low quality
    part (see option -q). (default: 1)'
  type: boolean
  inputBinding:
    prefix: --min-trim-length
- id: quality_threshold
  doc: '<int>     Specify  the  quality  score  threshold for trimming the low quality  part  of  a  read.  If  the  quality  scores
    of two consecutive  bases  are  strictly  less  than  the specified threshold,  the  rest
    of the read will be trimmed. (default: 0)'
  type: boolean
  inputBinding:
    prefix: --quality-threshold
- id: max_uncalled_base
  doc: '<float>   Specify  the maximal proportion of uncalled bases in a read. Setting
    this value to 0 will cause PEAR to discard all reads containing  uncalled  bases.  The
    other extreme setting is 1 which  causes  PEAR  to process all reads independent
    on the number of uncalled bases. (default: 1)'
  type: boolean
  inputBinding:
    prefix: --max-uncalled-base
- id: test_method
  doc: "<int>     Specify  the  type  of  statistical  test.  Two  options are available.\
    \ (default: 1) 1: Given the minimum allowed overlap, test using the highest OES.\
    \ Note that due to its discrete nature, this test usually yields  a lower p-value\
    \ for the assembled read than the cut- off  (specified  by -p). For example, setting\
    \ the cut-off to 0.05  using  this  test,  the  assembled reads might have an\
    \ actual p-value of 0.02. 2. Use the acceptance probability (m.a.p). This test\
    \ methods computes  the same probability as test method 1. However, it assumes\
    \  that  the  minimal  overlap is the observed overlap with  the  highest  OES,\
    \ instead of the one specified by -v. Therefore,  this  is  not  a  valid statistical\
    \ test and the 'p-value'  is  in fact the maximal probability for accepting the\
    \ assembly. Nevertheless, we observed in practice that for the case the actual\
    \ overlap sizes are relatively small, test 2  can  correctly  assemble  more \
    \ reads  with only slightly higher false-positive rate."
  type: boolean
  inputBinding:
    prefix: --test-method
- id: empirical_freqs
  doc: 'Disable  empirical base frequencies. (default: use empirical base frequencies)'
  type: boolean
  inputBinding:
    prefix: --empirical-freqs
- id: score_method
  doc: '<int>     Specify the scoring method. (default: 2) 1. OES with +1 for match
    and -1 for mismatch. 2: Assembly score (AS). Use +1 for match and -1 for mismatch
    multiplied by base quality scores. 3: Ignore quality scores and use +1 for a match
    and -1 for a mismatch.'
  type: boolean
  inputBinding:
    prefix: --score-method
- id: phred_base
  doc: '<int>     Base PHRED quality score. (default: 33)'
  type: boolean
  inputBinding:
    prefix: --phred-base
- id: memory
  doc: <str>     Specify  the  amount of memory to be used. The number may be followed  by  one  of  the  letters  K,  M,  or  G  denoting
    Kilobytes,  Megabytes and Gigabytes, respectively. Bytes are assumed in case no
    letter is specified.
  type: boolean
  inputBinding:
    prefix: --memory
- id: cap
  doc: '<int>     Specify  the upper bound for the resulting quality score. If set
    to zero, capping is disabled. (default: 40)'
  type: boolean
  inputBinding:
    prefix: --cap
- id: threads
  doc: <int>     Number of threads to use
  type: boolean
  inputBinding:
    prefix: --threads
- id: n_base
  doc: When  merging  a  base-pair  that  consists of two non-equal bases  out  of
    which none is degenerate, set the merged base to N and use the highest quality
    score of the two bases
  type: boolean
  inputBinding:
    prefix: --nbase
outputs: []
cwlVersion: v1.1
baseCommand:
- pear
