class: CommandLineTool
id: megagta.py.cwl
inputs:
- id: r
  doc: /--read                <se>           comma-separated list of fasta/q single-end
    files
  type: boolean
  inputBinding:
    prefix: -r
- id: g
  doc: /--gene-list           <string>       gene list
  type: boolean
  inputBinding:
    prefix: -g
- id: c
  doc: /--min-count           <int>          minimum multiplicity for filtering k-mers
    [1]
  type: boolean
  inputBinding:
    prefix: -c
- id: k
  doc: /--k-list              <int,int,..>   comma-separated list of kmer size (in
    range 15-127) the last k must be a multiple of 3) [30,36,45]
  type: boolean
  inputBinding:
    prefix: -k
- id: p
  doc: /--prune-len           <int>          prune the search if the score does not
    improve after <int> steps [20]
  type: boolean
  inputBinding:
    prefix: -p
- id: l
  doc: /--low-cov-penalty     <float>        penalty for coverage one edges (in [0,1])
    [0.5]
  type: boolean
  inputBinding:
    prefix: -l
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
- id: m
  doc: /--memory              <float>        max memory in byte to be used in SdBG
    construction [0.9] (if set between 0-1, fraction of the machine's total memory)
  type: boolean
  inputBinding:
    prefix: -m
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
- id: t
  doc: '/--num-cpu-threads     <int>          number of CPU threads, at least 2. Default:
    auto detect to use all CPU threads [auto]'
  type: boolean
  inputBinding:
    prefix: -t
- id: o
  doc: /--out-dir             <string>       output directory [./megagta_out]
  type: boolean
  inputBinding:
    prefix: -o
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
- id: v
  doc: /--version                            print version
  type: boolean
  inputBinding:
    prefix: -v
- id: verbose
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- megagta.py
