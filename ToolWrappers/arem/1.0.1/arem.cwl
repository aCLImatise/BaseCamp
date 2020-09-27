class: CommandLineTool
id: arem.cwl
inputs:
- id: in_treatment
  doc: "ChIP-seq treatment files. REQUIRED. When ELANDMULTIPET\nis selected, you must\
    \ provide two files separated by\ncomma, e.g.\ns_1_1_eland_multi.txt,s_1_2_eland_multi.txt"
  type: File
  inputBinding:
    prefix: --treatment
- id: in_control
  doc: "Control files. When ELANDMULTIPET is selected, you\nmust provide two files\
    \ separated by comma, e.g.\ns_2_1_eland_multi.txt,s_2_2_eland_multi.txt"
  type: File
  inputBinding:
    prefix: --control
- id: in_name
  doc: "Experiment name, which will be used to generate output\nfile names. DEFAULT:\
    \ \"NA\""
  type: File
  inputBinding:
    prefix: --name
- id: in_format
  doc: "Format of tag file, \"AUTO\", \"BED\" or \"ELAND\" or\n\"ELANDMULTI\" or \"\
    ELANDMULTIPET\" or \"ELANDEXPORT\" or\n\"SAM\" or \"BAM\" or \"BOWTIE\". The default\
    \ AUTO option\nwill let AREM decide which format the file is. Please\ncheck the\
    \ definition in 00README file if you choose EL\nAND/ELANDMULTI/ELANDMULTIPET/ELANDEXPORT/SAM/BAM/BOWTI\n\
    E. DEFAULT: \"AUTO\""
  type: File
  inputBinding:
    prefix: --format
- id: in_pet_dist
  doc: "Best distance between Pair-End Tags. Only available\nwhen format is 'ELANDMULTIPET'.\
    \ DEFAULT: 200"
  type: long
  inputBinding:
    prefix: --petdist
- id: in_g_size
  doc: "Effective genome size. It can be 1.0e+9 or 1000000000,\nor shortcuts:'hs'\
    \ for human (2.7e9), 'mm' for mouse\n(1.87e9), 'ce' for C. elegans (9e7) and 'dm'\
    \ for\nfruitfly (1.2e8), Default:hs"
  type: long
  inputBinding:
    prefix: --gsize
- id: in_t_size
  doc: "Tag size. This will overide the auto detected tag\nsize. DEFAULT: 25"
  type: long
  inputBinding:
    prefix: --tsize
- id: in_bw
  doc: "Band width. This value is only used while building the\nshifting model. DEFAULT:\
    \ 300"
  type: long
  inputBinding:
    prefix: --bw
- id: in_p_value
  doc: 'Pvalue cutoff for peak detection. DEFAULT: 1e-5'
  type: double
  inputBinding:
    prefix: --pvalue
- id: in_m_fold
  doc: "Select the regions within MFOLD range of high-\nconfidence enrichment ratio\
    \ against background to\nbuild model. The regions must be lower than upper\nlimit,\
    \ and higher than the lower limit. DEFAULT:10,30"
  type: long
  inputBinding:
    prefix: --mfold
- id: in_no_lambda
  doc: "If True, AREM will use fixed background lambda as\nlocal lambda for every\
    \ peak region. Normally, AREM\ncalculates a dynamic local lambda to reflect the\
    \ local\nbias due to potential chromatin structure."
  type: boolean
  inputBinding:
    prefix: --nolambda
- id: in_s_local
  doc: "The small nearby region in basepairs to calculate\ndynamic lambda. This is\
    \ used to capture the bias near\nthe peak summit region. Invalid if there is no\
    \ control\ndata. DEFAULT: 1000"
  type: long
  inputBinding:
    prefix: --slocal
- id: in_l_local
  doc: "The large nearby region in basepairs to calculate\ndynamic lambda. This is\
    \ used to capture the surround\nbias. DEFAULT: 10000."
  type: long
  inputBinding:
    prefix: --llocal
- id: in_off_auto
  doc: "Whether turn off the auto pair model process. If not\nset, when AREM failed\
    \ to build paired model, it will\nuse the nomodel settings, the '--shiftsize'\
    \ parameter\nto shift and extend each tags. DEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --off-auto
- id: in_no_model
  doc: "Whether or not to build the shifting model. If True,\nAREM will not build\
    \ model. by default it means\nshifting size = 100, try to set shiftsize to change\n\
    it. DEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --nomodel
- id: in_shift_size
  doc: "The arbitrary shift size in bp. When nomodel is true,\nAREM will use this\
    \ value as 1/2 of fragment size.\nDEFAULT: 100"
  type: long
  inputBinding:
    prefix: --shiftsize
- id: in_keep_dup
  doc: "It controls the AREM behavior towards duplicate tags\nat the exact same location\
    \ -- the same coordination\nand the same strand. The default 'auto' option makes\n\
    MACS calculate the maximum tags at the exact same\nlocation based on binomal distribution\
    \ using 1e-5 as\npvalue cutoff; and the 'all' option keeps every tags.\nIf an\
    \ integer is given, at most this number of tags\nwill be kept at the same location.\
    \ Default: auto"
  type: long
  inputBinding:
    prefix: --keep-dup
- id: in_to_small
  doc: "When set, scale the larger dataset down to the smaller\ndataset, by default,\
    \ the smaller dataset will be\nscaled towards the larger dataset. DEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --to-small
- id: in_wig
  doc: "Whether or not to save extended fragment pileup at\nevery WIGEXTEND bps into\
    \ a wiggle file. When --single-\nprofile is on, only one file for the whole genome\
    \ is\nsaved. WARNING: this process is time/space consuming!!"
  type: boolean
  inputBinding:
    prefix: --wig
- id: in_bdg
  doc: "Whether or not to save extended fragment pileup at\nevery bp into a bedGraph\
    \ file. When it's on, -w,\n--space and --call-subpeaks will be ignored. When\n\
    --single-profile is on, only one file for the whole\ngenome is saved. WARNING:\
    \ this process is time/space\nconsuming!!"
  type: boolean
  inputBinding:
    prefix: --bdg
- id: in_single_profile
  doc: "When set, a single wiggle file will be saved for\ntreatment and input. Default:\
    \ False"
  type: boolean
  inputBinding:
    prefix: --single-profile
- id: in_space
  doc: "The resoluation for saving wiggle files, by default,\nMACS will save the raw\
    \ tag count every 10 bps. Usable\nonly with '--wig' option."
  type: long
  inputBinding:
    prefix: --space
- id: in_call_sub_peaks
  doc: "If set, AREM will invoke Mali Salmon's PeakSplitter\nsoft through system call.\
    \ If PeakSplitter can't be\nfound, an instruction will be shown for downloading\n\
    and installing the PeakSplitter package. -w option\nneeds to be on and -B should\
    \ be off to let it work.\nDEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --call-subpeaks
- id: in_verbose
  doc: "Set verbose level. 0: only show critical message, 1:\nshow additional warning\
    \ message, 2: show process\ninformation, 3: show debug messages. DEFAULT:2"
  type: long
  inputBinding:
    prefix: --verbose
- id: in_diag
  doc: "Whether or not to produce a diagnosis report. It's up\nto 9X time consuming.\
    \ Please check 00README file for\ndetail. DEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --diag
- id: in_fe_min
  doc: "For diagnostics, min fold enrichment to consider.\nDEFAULT: 0"
  type: long
  inputBinding:
    prefix: --fe-min
- id: in_fe_max
  doc: "For diagnostics, max fold enrichment to consider.\nDEFAULT: maximum fold enrichment"
  type: long
  inputBinding:
    prefix: --fe-max
- id: in_fe_step
  doc: 'For diagnostics, fold enrichment step.  DEFAULT: 20'
  type: long
  inputBinding:
    prefix: --fe-step
- id: in_no_em
  doc: "Do NOT iteratively align multi-reads by E-M. Multi-\nread probabilities will\
    \ be based on quality scores or\nuniform (if --no-quals) DEFAULT : FALSE"
  type: boolean
  inputBinding:
    prefix: --no-EM
- id: in_em_converge_diff
  doc: "The minimum entropy change between iterations before\nhalting E-M steps. DEFAULT\
    \ : 1e-05"
  type: long
  inputBinding:
    prefix: --EM-converge-diff
- id: in_em_min_score
  doc: "Minimum enrichment score. Windows below this threshold\nwill all look the\
    \ same to the aligner. DEFAULT : 1.5"
  type: long
  inputBinding:
    prefix: --EM-min-score
- id: in_em_max_score
  doc: "Maximum enrichment score. Windows above this threshold\nwill all look the\
    \ same to the aligner, DEFAULT : No\nMaximum"
  type: long
  inputBinding:
    prefix: --EM-max-score
- id: in_em_show_graphs
  doc: "generate diagnostic graphs for E-M. (requires\nMATPLOTLIB). DEFAULT : FALSE"
  type: boolean
  inputBinding:
    prefix: --EM-show-graphs
- id: in_quality_scale
  doc: "Initial alignment probabilities are determined by read\nquality and mismatches.\
    \ Each possible alignment is\nassigned a probability from the product over all\
    \ bases\nof either 1-p(ReadError_base) when there is no\nmismatch, or p(ReadError_base)\
    \ when the called base\ndisagrees with the reference.  You may also select a\n\
    uniform initialization. Read quality scale is the must\nbe one of ['auto', 'sanger+33',\
    \ 'illumina+64'].\nDEFAULT : auto"
  type: long
  inputBinding:
    prefix: --quality-scale
- id: in_random_multi
  doc: "Convert all multi reads to unique reads by selecting\none alignment at random\
    \ for each read. DEFAULT : False"
  type: boolean
  inputBinding:
    prefix: --random-multi
- id: in_no_multi
  doc: Throw away all reads that have more than one alignment
  type: boolean
  inputBinding:
    prefix: --no-multi
- id: in_no_greedy_caller
  doc: "Use AREM default peak caller instead of the greedy\ncaller. This normally\
    \ results in wider, less enriched\npeaks, especially with multi-reads. DEFAULT\
    \ : False"
  type: boolean
  inputBinding:
    prefix: --no-greedy-caller
- id: in_no_map_quals
  doc: "Do not use mapping probabilities as priors in each\nupdate step; just use\
    \ relative enrichment. DEFAULT :\nFalse"
  type: boolean
  inputBinding:
    prefix: --no-map-quals
- id: in_prior_snp
  doc: "Prior probability that a SNP occurs at any base in the\ngenome. DEFAULT :\
    \ 0.001"
  type: double
  inputBinding:
    prefix: --prior-snp
- id: in_write_read_probs
  doc: "Write out all final reads, including their alignment\nprobabilities as a BED\
    \ file. DEFAULT : FALSE\n"
  type: File
  inputBinding:
    prefix: --write-read-probs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name
  doc: "Experiment name, which will be used to generate output\nfile names. DEFAULT:\
    \ \"NA\""
  type: File
  outputBinding:
    glob: $(inputs.in_name)
- id: out_write_read_probs
  doc: "Write out all final reads, including their alignment\nprobabilities as a BED\
    \ file. DEFAULT : FALSE\n"
  type: File
  outputBinding:
    glob: $(inputs.in_write_read_probs)
cwlVersion: v1.1
baseCommand:
- arem
