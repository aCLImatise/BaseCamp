class: CommandLineTool
id: megagta.py.cwl
inputs:
- id: in_one
  doc: '<pe1>          comma-separated list of fasta/q paired-end #1 files, paired
    with files in <pe2>'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: '<pe2>          comma-separated list of fasta/q paired-end #2 files, paired
    with files in <pe1>'
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in_pe_commaseparated_list_interleaved
  doc: <pe12>         comma-separated list of interleaved fasta/q paired-end files
  type: boolean
  inputBinding:
    prefix: --12
- id: in_r_slash_read
  doc: <se>           comma-separated list of fasta/q single-end files
  type: boolean
  inputBinding:
    prefix: -r/--read
- id: in_g_slash_gene_list
  doc: <string>       gene list
  type: boolean
  inputBinding:
    prefix: -g/--gene-list
- id: in_c_slash_min_count
  doc: <int>          minimum multiplicity for filtering k-mers [1]
  type: boolean
  inputBinding:
    prefix: -c/--min-count
- id: in_k_slash_k_list
  doc: "<int,int,..>   comma-separated list of kmer size (in range 15-127)\nthe last\
    \ k must be a multiple of 3) [30,36,45]"
  type: boolean
  inputBinding:
    prefix: -k/--k-list
- id: in_p_slash_prune_len
  doc: <int>          prune the search if the score does not improve after <int> steps
    [20]
  type: boolean
  inputBinding:
    prefix: -p/--prune-len
- id: in_lslash_low_cov_penalty
  doc: <float>        penalty for coverage one edges (in [0,1]) [0.5]
  type: boolean
  inputBinding:
    prefix: -l/--low-cov-penalty
- id: in_max_tip_len
  doc: <int>          max tip length [150]
  type: boolean
  inputBinding:
    prefix: --max-tip-len
- id: in_no_mercy
  doc: do not add mercy kmers
  type: boolean
  inputBinding:
    prefix: --no-mercy
- id: in_m_slash_memory
  doc: "<float>        max memory in byte to be used in SdBG construction [0.9]\n\
    (if set between 0-1, fraction of the machine's total memory)"
  type: boolean
  inputBinding:
    prefix: -m/--memory
- id: in_mem_flag
  doc: "<int>          SdBG builder memory mode [1]\n0: minimum; 1: moderate; others:\
    \ use all memory specified by '-m/--memory'."
  type: boolean
  inputBinding:
    prefix: --mem-flag
- id: in_use_gpu
  doc: use GPU
  type: boolean
  inputBinding:
    prefix: --use-gpu
- id: in_gpu_mem
  doc: '<float>        GPU memory in byte to be used. Default: auto detect to use
    up all free GPU memory [0]'
  type: boolean
  inputBinding:
    prefix: --gpu-mem
- id: in_t_slash_num_cpu_threads
  doc: '<int>          number of CPU threads, at least 2. Default: auto detect to
    use all CPU threads [auto]'
  type: boolean
  inputBinding:
    prefix: -t/--num-cpu-threads
- id: in_oslash_out_dir
  doc: <string>       output directory [./megagta_out]
  type: Directory
  inputBinding:
    prefix: -o/--out-dir
- id: in_min_contig_len
  doc: <int>          minimum length of contigs to output [450]
  type: boolean
  inputBinding:
    prefix: --min-contig-len
- id: in_keep_tmp_files
  doc: keep all temporary files
  type: boolean
  inputBinding:
    prefix: --keep-tmp-files
- id: in_continue
  doc: "continue a MEGAHIT run from its last available check point.\nplease set the\
    \ output directory correctly when using this option."
  type: Directory
  inputBinding:
    prefix: --continue
- id: in_h_slash_help
  doc: print the usage message
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_v_slash_version
  doc: print version
  type: boolean
  inputBinding:
    prefix: -v/--version
- id: in_verbose
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pe_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_pe_one_two
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_pe_two
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_se
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_string
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_comma_separated
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_gene
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_that
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_can
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_be
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_fast_a_slash_q
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_interleaved
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_specified
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_paired_end
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_single_end
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_multiple
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_times
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_oslash_out_dir
  doc: <string>       output directory [./megagta_out]
  type: Directory
  outputBinding:
    glob: $(inputs.in_oslash_out_dir)
- id: out_continue
  doc: "continue a MEGAHIT run from its last available check point.\nplease set the\
    \ output directory correctly when using this option."
  type: Directory
  outputBinding:
    glob: $(inputs.in_continue)
cwlVersion: v1.1
baseCommand:
- megagta.py
