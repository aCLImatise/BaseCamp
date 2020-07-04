class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hisat2_build.cwl
inputs:
- id: reference_sequences_given
  doc: reference sequences given on cmd line (as <reference_in>)
  type: boolean
  inputBinding:
    prefix: -c
- id: large_index
  doc: force generated index to be 'large', even if ref has fewer than 4 billion nucleotides
  type: boolean
  inputBinding:
    prefix: --large-index
- id: a_slash_no_auto
  doc: disable automatic -p/--bmax/--dcv memory-fitting
  type: boolean
  inputBinding:
    prefix: -a/--noauto
- id: number_of_threads
  doc: number of threads
  type: long
  inputBinding:
    prefix: -p
- id: bmax
  doc: max bucket sz for blockwise suffix-array builder
  type: long
  inputBinding:
    prefix: --bmax
- id: bmax_divn
  doc: 'max bucket sz as divisor of ref len (default: 4)'
  type: long
  inputBinding:
    prefix: --bmaxdivn
- id: dcv
  doc: 'diff-cover period for blockwise (default: 1024)'
  type: long
  inputBinding:
    prefix: --dcv
- id: no_dc
  doc: disable diff-cover (algorithm becomes quadratic)
  type: boolean
  inputBinding:
    prefix: --nodc
- id: r_slash_no_ref
  doc: don't build .3/.4.ht2 (packed reference) portion
  type: boolean
  inputBinding:
    prefix: -r/--noref
- id: three_slash_just_ref
  doc: just build .3/.4.ht2 (packed reference) portion
  type: boolean
  inputBinding:
    prefix: -3/--justref
- id: oslash_off_rate
  doc: 'SA is sampled every 2^offRate BWT chars (default: 5)'
  type: long
  inputBinding:
    prefix: -o/--offrate
- id: t_slash_f_tab_chars
  doc: '# of chars consumed in initial lookup (default: 10)'
  type: long
  inputBinding:
    prefix: -t/--ftabchars
- id: local_off_rate
  doc: 'SA (local) is sampled every 2^offRate BWT chars (default: 3)'
  type: long
  inputBinding:
    prefix: --localoffrate
- id: local_f_tab_chars
  doc: '# of chars consumed in initial lookup in a local index (default: 6)'
  type: long
  inputBinding:
    prefix: --localftabchars
- id: snp
  doc: SNP file name
  type: File
  inputBinding:
    prefix: --snp
- id: haplotype
  doc: haplotype file name
  type: File
  inputBinding:
    prefix: --haplotype
- id: ss
  doc: Splice site file name
  type: File
  inputBinding:
    prefix: --ss
- id: exon
  doc: Exon file name
  type: File
  inputBinding:
    prefix: --exon
- id: repeat_ref
  doc: Repeat reference file name
  type: File
  inputBinding:
    prefix: --repeat-ref
- id: repeat_info
  doc: Repeat information file name
  type: File
  inputBinding:
    prefix: --repeat-info
- id: repeat_snp
  doc: Repeat snp file name
  type: File
  inputBinding:
    prefix: --repeat-snp
- id: repeat_haplotype
  doc: Repeat haplotype file name
  type: File
  inputBinding:
    prefix: --repeat-haplotype
- id: seed
  doc: seed for random number generator
  type: long
  inputBinding:
    prefix: --seed
- id: q_slash_quiet
  doc: disable verbose output (for debugging)
  type: boolean
  inputBinding:
    prefix: -q/--quiet
- id: h_slash_help
  doc: print detailed description of tool and its options
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: reference_in
  doc: comma-separated list of files with ref sequences
  type: string
  inputBinding:
    position: 0
- id: his_at_two_index_base
  doc: write ht2 data to files with this dir/basename
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- hisat2-build
