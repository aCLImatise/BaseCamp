class: CommandLineTool
id: ../../../hisat2_build.cwl
inputs:
- id: in_reference_sequences_given
  doc: "reference sequences given on cmd line (as\n<reference_in>)"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_large_index
  doc: "force generated index to be 'large', even if ref\nhas fewer than 4 billion\
    \ nucleotides"
  type: boolean
  inputBinding:
    prefix: --large-index
- id: in_a_slash_no_auto
  doc: disable automatic -p/--bmax/--dcv memory-fitting
  type: boolean
  inputBinding:
    prefix: -a/--noauto
- id: in_number_of_threads
  doc: number of threads
  type: long
  inputBinding:
    prefix: -p
- id: in_bmax
  doc: max bucket sz for blockwise suffix-array builder
  type: long
  inputBinding:
    prefix: --bmax
- id: in_bmax_divn
  doc: 'max bucket sz as divisor of ref len (default: 4)'
  type: long
  inputBinding:
    prefix: --bmaxdivn
- id: in_dcv
  doc: 'diff-cover period for blockwise (default: 1024)'
  type: long
  inputBinding:
    prefix: --dcv
- id: in_no_dc
  doc: disable diff-cover (algorithm becomes quadratic)
  type: boolean
  inputBinding:
    prefix: --nodc
- id: in_r_slash_no_ref
  doc: don't build .3/.4.ht2 (packed reference) portion
  type: boolean
  inputBinding:
    prefix: -r/--noref
- id: in_three_slash_just_ref
  doc: just build .3/.4.ht2 (packed reference) portion
  type: boolean
  inputBinding:
    prefix: -3/--justref
- id: in_oslash_off_rate
  doc: 'SA is sampled every 2^offRate BWT chars (default: 5)'
  type: long
  inputBinding:
    prefix: -o/--offrate
- id: in_t_slash_f_tab_chars
  doc: '# of chars consumed in initial lookup (default: 10)'
  type: long
  inputBinding:
    prefix: -t/--ftabchars
- id: in_local_off_rate
  doc: 'SA (local) is sampled every 2^offRate BWT chars (default: 3)'
  type: long
  inputBinding:
    prefix: --localoffrate
- id: in_local_f_tab_chars
  doc: '# of chars consumed in initial lookup in a local index (default: 6)'
  type: long
  inputBinding:
    prefix: --localftabchars
- id: in_snp
  doc: SNP file name
  type: File
  inputBinding:
    prefix: --snp
- id: in_haplotype
  doc: haplotype file name
  type: File
  inputBinding:
    prefix: --haplotype
- id: in_ss
  doc: Splice site file name
  type: File
  inputBinding:
    prefix: --ss
- id: in_exon
  doc: Exon file name
  type: File
  inputBinding:
    prefix: --exon
- id: in_repeat_ref
  doc: Repeat reference file name
  type: File
  inputBinding:
    prefix: --repeat-ref
- id: in_repeat_info
  doc: Repeat information file name
  type: File
  inputBinding:
    prefix: --repeat-info
- id: in_repeat_snp
  doc: Repeat snp file name
  type: File
  inputBinding:
    prefix: --repeat-snp
- id: in_repeat_haplotype
  doc: Repeat haplotype file name
  type: File
  inputBinding:
    prefix: --repeat-haplotype
- id: in_seed
  doc: seed for random number generator
  type: long
  inputBinding:
    prefix: --seed
- id: in_q_slash_quiet
  doc: disable verbose output (for debugging)
  type: boolean
  inputBinding:
    prefix: -q/--quiet
- id: in_h_slash_help
  doc: print detailed description of tool and its options
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_reference_in
  doc: comma-separated list of files with ref sequences
  type: string
  inputBinding:
    position: 0
- id: in_his_at_two_index_base
  doc: write ht2 data to files with this dir/basename
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hisat2-build
