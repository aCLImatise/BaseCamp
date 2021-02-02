class: CommandLineTool
id: pear.cwl
inputs:
- id: in_forward_fast_q
  doc: <str>     Forward paired-end FASTQ file.
  type: boolean
  inputBinding:
    prefix: --forward-fastq
- id: in_reverse_fast_q
  doc: <str>     Reverse paired-end FASTQ file.
  type: boolean
  inputBinding:
    prefix: --reverse-fastq
- id: in_output
  doc: <str>     Output filename.
  type: File
  inputBinding:
    prefix: --output
- id: in_p_value
  doc: "<float>   Specify  a p-value for the statistical test. If the computed\np-value\
    \ of a possible assembly exceeds the specified p-value\nthen  paired-end  read\
    \  will not be assembled. Valid options\nare: 0.0001, 0.001, 0.01, 0.05 and 1.0.\
    \ Setting 1.0 disables\nthe test. (default: 0.01)"
  type: boolean
  inputBinding:
    prefix: --p-value
- id: in_min_overlap
  doc: "<int>     Specify the minimum overlap size. The minimum overlap may be\nset\
    \ to 1 when the statistical test is used. However, further\nrestricting  the \
    \ minimum overlap size to a proper value may\nreduce false-positive assembles.\
    \ (default: 10)"
  type: boolean
  inputBinding:
    prefix: --min-overlap
- id: in_max_assembly_length
  doc: <int>     Specify   the  maximum  possible  length  of  the  assembled
  type: boolean
  inputBinding:
    prefix: --max-assembly-length
- id: in_min_assembly_length
  doc: <int>     Specify   the  minimum  possible  length  of  the  assembled
  type: boolean
  inputBinding:
    prefix: --min-assembly-length
- id: in_min_trim_length
  doc: "<int>     Specify  the  minimum length of reads after trimming the low\nquality\
    \ part (see option -q). (default: 1)"
  type: boolean
  inputBinding:
    prefix: --min-trim-length
- id: in_quality_threshold
  doc: <int>     Specify  the  quality  score  threshold for trimming the low
  type: boolean
  inputBinding:
    prefix: --quality-threshold
- id: in_max_uncalled_base
  doc: "<float>   Specify  the maximal proportion of uncalled bases in a read.\nSetting\
    \ this value to 0 will cause PEAR to discard all reads\ncontaining  uncalled \
    \ bases.  The other extreme setting is 1\nwhich  causes  PEAR  to process all\
    \ reads independent on the\nnumber of uncalled bases. (default: 1)"
  type: boolean
  inputBinding:
    prefix: --max-uncalled-base
- id: in_test_method
  doc: "<int>     Specify  the  type  of  statistical  test.  Two  options are\navailable.\
    \ (default: 1)\n1: Given the minimum allowed overlap, test using the highest\n\
    OES. Note that due to its discrete nature, this test usually\nyields  a lower\
    \ p-value for the assembled read than the cut-\noff  (specified  by -p). For example,\
    \ setting the cut-off to\n0.05  using  this  test,  the  assembled reads might\
    \ have an\nactual p-value of 0.02.\n2. Use the acceptance probability (m.a.p).\
    \ This test methods\ncomputes  the same probability as test method 1. However,\
    \ it\nassumes  that  the  minimal  overlap is the observed overlap\nwith  the\
    \  highest  OES, instead of the one specified by -v.\nTherefore,  this  is  not\
    \  a  valid statistical test and the\n'p-value'  is  in fact the maximal probability\
    \ for accepting\nthe assembly. Nevertheless, we observed in practice that for\n\
    the case the actual overlap sizes are relatively small, test\n2  can  correctly\
    \  assemble  more  reads  with only slightly\nhigher false-positive rate."
  type: boolean
  inputBinding:
    prefix: --test-method
- id: in_empirical_freqs
  doc: "Disable  empirical base frequencies. (default: use empirical\nbase frequencies)"
  type: boolean
  inputBinding:
    prefix: --empirical-freqs
- id: in_score_method
  doc: "<int>     Specify the scoring method. (default: 2)\n1. OES with +1 for match\
    \ and -1 for mismatch.\n2: Assembly score (AS). Use +1 for match and -1 for mismatch\n\
    multiplied by base quality scores.\n3: Ignore quality scores and use +1 for a\
    \ match and -1 for a\nmismatch."
  type: boolean
  inputBinding:
    prefix: --score-method
- id: in_phred_base
  doc: '<int>     Base PHRED quality score. (default: 33)'
  type: boolean
  inputBinding:
    prefix: --phred-base
- id: in_memory
  doc: <str>     Specify  the  amount of memory to be used. The number may be
  type: boolean
  inputBinding:
    prefix: --memory
- id: in_cap
  doc: "<int>     Specify  the upper bound for the resulting quality score. If\nset\
    \ to zero, capping is disabled. (default: 40)"
  type: boolean
  inputBinding:
    prefix: --cap
- id: in_threads
  doc: <int>     Number of threads to use
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_n_base
  doc: When  merging  a  base-pair  that  consists of two non-equal
  type: boolean
  inputBinding:
    prefix: --nbase
- id: in_and
  doc: 'assembled  sequences  may be arbitrary short. (default:'
  type: string
  inputBinding:
    position: 1
- id: in_quality
  doc: part  of  a  read.  If  the  quality  scores of two
  type: string
  inputBinding:
    position: 0
- id: in_consecutive
  doc: bases  are  strictly  less  than  the specified
  type: string
  inputBinding:
    position: 1
- id: in_followed
  doc: by  one  of  the  letters  K,  M,  or  G  denoting
  type: string
  inputBinding:
    position: 0
- id: in_bases
  doc: out  of which none is degenerate, set the merged base
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: <str>     Output filename.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- pear
