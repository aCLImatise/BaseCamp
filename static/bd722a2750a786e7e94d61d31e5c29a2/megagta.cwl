class: CommandLineTool
id: ../../../megagta.py.cwl
inputs:
- id: one
  doc: '<pe1>          comma-separated list of fasta/q paired-end #1 files, paired
    with files in <pe2>'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: two
  doc: '<pe2>          comma-separated list of fasta/q paired-end #2 files, paired
    with files in <pe1>'
  type: boolean
  inputBinding:
    prefix: '-2'
- id: pe_commaseparated_list_interleaved
  doc: <pe12>         comma-separated list of interleaved fasta/q paired-end files
  type: boolean
  inputBinding:
    prefix: --12
- id: r_slash_read
  doc: <se>           comma-separated list of fasta/q single-end files
  type: boolean
  inputBinding:
    prefix: -r/--read
- id: g_slash_gene_list
  doc: <string>       gene list
  type: boolean
  inputBinding:
    prefix: -g/--gene-list
- id: c_slash_min_count
  doc: <int>          minimum multiplicity for filtering k-mers [1]
  type: boolean
  inputBinding:
    prefix: -c/--min-count
- id: k_slash_k_list
  doc: <int,int,..>   comma-separated list of kmer size (in range 15-127) the last
    k must be a multiple of 3) [30,36,45]
  type: boolean
  inputBinding:
    prefix: -k/--k-list
- id: p_slash_prune_len
  doc: <int>          prune the search if the score does not improve after <int> steps
    [20]
  type: boolean
  inputBinding:
    prefix: -p/--prune-len
- id: lslash_low_cov_penalty
  doc: <float>        penalty for coverage one edges (in [0,1]) [0.5]
  type: boolean
  inputBinding:
    prefix: -l/--low-cov-penalty
- id: max_tip_len
  doc: <int>          max tip length [150]
  type: boolean
  inputBinding:
    prefix: --max-tip-len
- id: no_mercy
  doc: do not add mercy kmers
  type: boolean
  inputBinding:
    prefix: --no-mercy
- id: m_slash_memory
  doc: <float>        max memory in byte to be used in SdBG construction [0.9] (if
    set between 0-1, fraction of the machine's total memory)
  type: boolean
  inputBinding:
    prefix: -m/--memory
- id: mem_flag
  doc: "<int>          SdBG builder memory mode [1] 0: minimum; 1: moderate; others:\
    \ use all memory specified by '-m/--memory'."
  type: boolean
  inputBinding:
    prefix: --mem-flag
- id: use_gpu
  doc: use GPU
  type: boolean
  inputBinding:
    prefix: --use-gpu
- id: gpu_mem
  doc: '<float>        GPU memory in byte to be used. Default: auto detect to use
    up all free GPU memory [0]'
  type: boolean
  inputBinding:
    prefix: --gpu-mem
- id: t_slash_num_cpu_threads
  doc: '<int>          number of CPU threads, at least 2. Default: auto detect to
    use all CPU threads [auto]'
  type: boolean
  inputBinding:
    prefix: -t/--num-cpu-threads
- id: oslash_out_dir
  doc: <string>       output directory [./megagta_out]
  type: boolean
  inputBinding:
    prefix: -o/--out-dir
- id: min_contig_len
  doc: <int>          minimum length of contigs to output [450]
  type: boolean
  inputBinding:
    prefix: --min-contig-len
- id: keep_tmp_files
  doc: keep all temporary files
  type: boolean
  inputBinding:
    prefix: --keep-tmp-files
- id: continue
  doc: continue a MEGAHIT run from its last available check point. please set the
    output directory correctly when using this option.
  type: boolean
  inputBinding:
    prefix: --continue
- id: h_slash_help
  doc: print the usage message
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: v_slash_version
  doc: print version
  type: boolean
  inputBinding:
    prefix: -v/--version
- id: verbose
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- megagta.py
