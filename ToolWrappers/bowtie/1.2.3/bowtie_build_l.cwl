class: CommandLineTool
id: bowtie_build_l.cwl
inputs:
- id: in_reference_files_fasta
  doc: reference files are Fasta (default)
  type: boolean
  inputBinding:
    prefix: -f
- id: in_reference_sequences_given
  doc: reference sequences given on cmd line (as <seq_in>)
  type: boolean
  inputBinding:
    prefix: -c
- id: in_c_slash_color
  doc: build a colorspace index
  type: boolean
  inputBinding:
    prefix: -C/--color
- id: in_a_slash_no_auto
  doc: disable automatic -p/--bmax/--dcv memory-fitting
  type: boolean
  inputBinding:
    prefix: -a/--noauto
- id: in_p_slash_packed
  doc: use packed strings internally; slower, uses less mem
  type: boolean
  inputBinding:
    prefix: -p/--packed
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
  doc: don't build .3/.4.ebwt (packed reference) portion
  type: boolean
  inputBinding:
    prefix: -r/--noref
- id: in_three_slash_just_ref
  doc: just build .3/.4.ebwt (packed reference) portion
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
- id: in_threads
  doc: '# of threads'
  type: long
  inputBinding:
    prefix: --threads
- id: in_n_to_a
  doc: convert Ns in reference to As
  type: boolean
  inputBinding:
    prefix: --ntoa
- id: in_seed
  doc: seed for random number generator
  type: long
  inputBinding:
    prefix: --seed
- id: in_q_slash_quiet
  doc: verbose output (for debugging)
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
- id: in_e_bwt_outfile_base
  doc: write Ebwt data to files with this dir/basename
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bowtie-build-l
