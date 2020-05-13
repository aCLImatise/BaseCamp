class: CommandLineTool
id: megahit.cwl
inputs:
- id: r
  doc: /--read                <se>           comma-separated list of fasta/q single-end
    files
  type: boolean
  inputBinding:
    prefix: -r
- id: min_count
  doc: <int>          minimum multiplicity for filtering (k_min+1)-mers [2]
  type: boolean
  inputBinding:
    prefix: --min-count
- id: k_list
  doc: <int,int,..>   comma-separated list of kmer size all must be odd, in the range
    15-255, increment <= 28) [21,29,39,59,79,99,119,141]
  type: boolean
  inputBinding:
    prefix: --k-list
- id: k_min
  doc: <int>          minimum kmer size (<= 255), must be odd number [21]
  type: boolean
  inputBinding:
    prefix: --k-min
- id: k_max
  doc: <int>          maximum kmer size (<= 255), must be odd number [141]
  type: boolean
  inputBinding:
    prefix: --k-max
- id: k_step
  doc: <int>          increment of kmer size of each iteration (<= 28), must be even
    number [12]
  type: boolean
  inputBinding:
    prefix: --k-step
- id: no_mercy
  doc: do not add mercy kmers
  type: boolean
  inputBinding:
    prefix: --no-mercy
- id: bubble_level
  doc: <int>          intensity of bubble merging (0-2), 0 to disable [2]
  type: boolean
  inputBinding:
    prefix: --bubble-level
- id: merge_level
  doc: <l,s>          merge complex bubbles of length <= l*kmer_size and similarity
    >= s [20,0.95]
  type: boolean
  inputBinding:
    prefix: --merge-level
- id: prune_level
  doc: <int>          strength of low depth pruning (0-3) [2]
  type: boolean
  inputBinding:
    prefix: --prune-level
- id: prune_depth
  doc: <int>          remove unitigs with avg kmer depth less than this value [2]
  type: boolean
  inputBinding:
    prefix: --prune-depth
- id: disconnect_ratio
  doc: '<float>        disconnect unitigs if its depth is less than this ratio times  the
    total depth of itself and its siblings [0.1]  '
  type: boolean
  inputBinding:
    prefix: --disconnect-ratio
- id: low_local_ratio
  doc: <float>        remove unitigs if its depth is less than this ratio times the
    average depth of the neighborhoods [0.2]
  type: boolean
  inputBinding:
    prefix: --low-local-ratio
- id: max_tip_len
  doc: <int>          remove tips less than this value [2*k]
  type: boolean
  inputBinding:
    prefix: --max-tip-len
- id: cleaning_rounds
  doc: <int>          number of rounds for graph cleanning [5]
  type: boolean
  inputBinding:
    prefix: --cleaning-rounds
- id: no_local
  doc: disable local assembly
  type: boolean
  inputBinding:
    prefix: --no-local
- id: km_in_1pass
  doc: use 1pass mode to build SdBG of k_min
  type: boolean
  inputBinding:
    prefix: --kmin-1pass
- id: presets
  doc: "<str>          override a group of parameters; possible values: meta-sensitive:\
    \ '--min-count 1 --k-list 21,29,39,49,...,129,141' meta-large: '--k-min 27 --k-max\
    \ 127 --k-step 10' (large & complex metagenomes, like soil)"
  type: boolean
  inputBinding:
    prefix: --presets
- id: m
  doc: /--memory              <float>        max memory in byte to be used in SdBG
    construction (if set between 0-1, fraction of the machine's total memory) [0.9]
  type: boolean
  inputBinding:
    prefix: -m
- id: mem_flag
  doc: "<int>          SdBG builder memory mode. 0: minimum; 1: moderate; others:\
    \ use all memory specified by '-m/--memory' [1]"
  type: boolean
  inputBinding:
    prefix: --mem-flag
- id: t
  doc: /--num-cpu-threads     <int>          number of CPU threads [# of logical processors]
  type: boolean
  inputBinding:
    prefix: -t
- id: no_hw_accel
  doc: run MEGAHIT without BMI2 and POPCNT hardware instructions
  type: boolean
  inputBinding:
    prefix: --no-hw-accel
- id: o
  doc: /--out-dir             <string>       output directory [./megahit_out]
  type: boolean
  inputBinding:
    prefix: -o
- id: out_prefix
  doc: <string>       output prefix (the contig file will be OUT_DIR/OUT_PREFIX.contigs.fa)
  type: boolean
  inputBinding:
    prefix: --out-prefix
- id: min_contig_len
  doc: <int>          minimum length of contigs to output [200]
  type: boolean
  inputBinding:
    prefix: --min-contig-len
- id: keep_tmp_files
  doc: keep all temporary files
  type: boolean
  inputBinding:
    prefix: --keep-tmp-files
- id: tmp_dir
  doc: <string>       set temp directory
  type: boolean
  inputBinding:
    prefix: --tmp-dir
- id: continue
  doc: continue a MEGAHIT run from its last available check point. please set the
    output directory correctly when using this option.
  type: boolean
  inputBinding:
    prefix: --continue
- id: test
  doc: run MEGAHIT on a toy test dataset
  type: boolean
  inputBinding:
    prefix: --test
- id: v
  doc: /--version                            print version
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- megahit
