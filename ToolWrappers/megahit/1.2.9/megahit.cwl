class: CommandLineTool
id: megahit.cwl
inputs:
- id: in_one
  doc: '<pe1>          comma-separated list of fasta/q paired-end #1 files, paired
    with files in <pe2>'
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: '<pe2>          comma-separated list of fasta/q paired-end #2 files, paired
    with files in <pe1>'
  type: boolean?
  inputBinding:
    prefix: '-2'
- id: in_commaseparated_list_interleaved
  doc: <pe12>         comma-separated list of interleaved fasta/q paired-end files
  type: boolean?
  inputBinding:
    prefix: --12
- id: in_read
  doc: <se>           comma-separated list of fasta/q single-end files
  type: boolean?
  inputBinding:
    prefix: --read
- id: in_min_count
  doc: <int>          minimum multiplicity for filtering (k_min+1)-mers [2]
  type: boolean?
  inputBinding:
    prefix: --min-count
- id: in_k_list
  doc: "<int,int,..>   comma-separated list of kmer size\nall must be odd, in the\
    \ range 15-255, increment <= 28)\n[21,29,39,59,79,99,119,141]"
  type: boolean?
  inputBinding:
    prefix: --k-list
- id: in_k_min
  doc: <int>          minimum kmer size (<= 255), must be odd number [21]
  type: boolean?
  inputBinding:
    prefix: --k-min
- id: in_k_max
  doc: <int>          maximum kmer size (<= 255), must be odd number [141]
  type: boolean?
  inputBinding:
    prefix: --k-max
- id: in_k_step
  doc: <int>          increment of kmer size of each iteration (<= 28), must be even
    number [12]
  type: boolean?
  inputBinding:
    prefix: --k-step
- id: in_no_mercy
  doc: do not add mercy kmers
  type: boolean?
  inputBinding:
    prefix: --no-mercy
- id: in_bubble_level
  doc: <int>          intensity of bubble merging (0-2), 0 to disable [2]
  type: boolean?
  inputBinding:
    prefix: --bubble-level
- id: in_merge_level
  doc: <l,s>          merge complex bubbles of length <= l*kmer_size and similarity
    >= s [20,0.95]
  type: boolean?
  inputBinding:
    prefix: --merge-level
- id: in_prune_level
  doc: <int>          strength of low depth pruning (0-3) [2]
  type: boolean?
  inputBinding:
    prefix: --prune-level
- id: in_prune_depth
  doc: <int>          remove unitigs with avg kmer depth less than this value [2]
  type: boolean?
  inputBinding:
    prefix: --prune-depth
- id: in_disconnect_ratio
  doc: "<float>        disconnect unitigs if its depth is less than this ratio times\n\
    the total depth of itself and its siblings [0.1]"
  type: boolean?
  inputBinding:
    prefix: --disconnect-ratio
- id: in_low_local_ratio
  doc: "<float>        remove unitigs if its depth is less than this ratio times\n\
    the average depth of the neighborhoods [0.2]"
  type: boolean?
  inputBinding:
    prefix: --low-local-ratio
- id: in_max_tip_len
  doc: <int>          remove tips less than this value [2*k]
  type: boolean?
  inputBinding:
    prefix: --max-tip-len
- id: in_cleaning_rounds
  doc: <int>          number of rounds for graph cleanning [5]
  type: boolean?
  inputBinding:
    prefix: --cleaning-rounds
- id: in_no_local
  doc: disable local assembly
  type: boolean?
  inputBinding:
    prefix: --no-local
- id: in_km_in_one_pass
  doc: use 1pass mode to build SdBG of k_min
  type: boolean?
  inputBinding:
    prefix: --kmin-1pass
- id: in_presets
  doc: "<str>          override a group of parameters; possible values:\nmeta-sensitive:\
    \ '--min-count 1 --k-list 21,29,39,49,...,129,141'\nmeta-large: '--k-min 27 --k-max\
    \ 127 --k-step 10'\n(large & complex metagenomes, like soil)"
  type: boolean?
  inputBinding:
    prefix: --presets
- id: in_memory
  doc: "<float>        max memory in byte to be used in SdBG construction\n(if set\
    \ between 0-1, fraction of the machine's total memory) [0.9]"
  type: boolean?
  inputBinding:
    prefix: --memory
- id: in_mem_flag
  doc: "<int>          SdBG builder memory mode. 0: minimum; 1: moderate;\nothers:\
    \ use all memory specified by '-m/--memory' [1]"
  type: boolean?
  inputBinding:
    prefix: --mem-flag
- id: in_num_cpu_threads
  doc: <int>          number of CPU threads [# of logical processors]
  type: boolean?
  inputBinding:
    prefix: --num-cpu-threads
- id: in_no_hw_accel
  doc: run MEGAHIT without BMI2 and POPCNT hardware instructions
  type: boolean?
  inputBinding:
    prefix: --no-hw-accel
- id: in_out_dir
  doc: <string>       output directory [./megahit_out]
  type: Directory?
  inputBinding:
    prefix: --out-dir
- id: in_out_prefix
  doc: <string>       output prefix (the contig file will be OUT_DIR/OUT_PREFIX.contigs.fa)
  type: File?
  inputBinding:
    prefix: --out-prefix
- id: in_min_contig_len
  doc: <int>          minimum length of contigs to output [200]
  type: boolean?
  inputBinding:
    prefix: --min-contig-len
- id: in_keep_tmp_files
  doc: keep all temporary files
  type: boolean?
  inputBinding:
    prefix: --keep-tmp-files
- id: in_tmp_dir
  doc: <string>       set temp directory
  type: boolean?
  inputBinding:
    prefix: --tmp-dir
- id: in_continue
  doc: "continue a MEGAHIT run from its last available check point.\nplease set the\
    \ output directory correctly when using this option."
  type: Directory?
  inputBinding:
    prefix: --continue
- id: in_test
  doc: run MEGAHIT on a toy test dataset
  type: boolean?
  inputBinding:
    prefix: --test
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
- id: in_comma_separated
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
- id: in_fast_a
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
- id: out_out_dir
  doc: <string>       output directory [./megahit_out]
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
- id: out_out_prefix
  doc: <string>       output prefix (the contig file will be OUT_DIR/OUT_PREFIX.contigs.fa)
  type: File?
  outputBinding:
    glob: $(inputs.in_out_prefix)
- id: out_continue
  doc: "continue a MEGAHIT run from its last available check point.\nplease set the\
    \ output directory correctly when using this option."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_continue)
hints: []
cwlVersion: v1.1
baseCommand:
- megahit
