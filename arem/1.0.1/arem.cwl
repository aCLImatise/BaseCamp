class: CommandLineTool
id: arem.cwl
inputs:
- id: treatment
  doc: ChIP-seq treatment files. REQUIRED. When ELANDMULTIPET is selected, you must
    provide two files separated by comma, e.g. s_1_1_eland_multi.txt,s_1_2_eland_multi.txt
  type: string
  inputBinding:
    prefix: --treatment
- id: control
  doc: Control files. When ELANDMULTIPET is selected, you must provide two files separated
    by comma, e.g. s_2_1_eland_multi.txt,s_2_2_eland_multi.txt
  type: string
  inputBinding:
    prefix: --control
- id: name
  doc: 'Experiment name, which will be used to generate output file names. DEFAULT:
    "NA"'
  type: string
  inputBinding:
    prefix: --name
- id: format
  doc: 'Format of tag file, "AUTO", "BED" or "ELAND" or "ELANDMULTI" or "ELANDMULTIPET"
    or "ELANDEXPORT" or "SAM" or "BAM" or "BOWTIE". The default AUTO option will let
    AREM decide which format the file is. Please check the definition in 00README
    file if you choose EL AND/ELANDMULTI/ELANDMULTIPET/ELANDEXPORT/SAM/BAM/BOWTI E.
    DEFAULT: "AUTO"'
  type: string
  inputBinding:
    prefix: --format
- id: pet_dist
  doc: "Best distance between Pair-End Tags. Only available when format is 'ELANDMULTIPET'.\
    \ DEFAULT: 200"
  type: string
  inputBinding:
    prefix: --petdist
- id: g_size
  doc: Effective genome size. It can be 1.0e+9 or 1000000000, or shortcuts:'hs' for
    human (2.7e9), 'mm' for mouse (1.87e9), 'ce' for C. elegans (9e7) and 'dm' for
    fruitfly (1.2e8), Default:hs
  type: string
  inputBinding:
    prefix: --gsize
- id: t_size
  doc: 'Tag size. This will overide the auto detected tag size. DEFAULT: 25'
  type: string
  inputBinding:
    prefix: --tsize
- id: bw
  doc: 'Band width. This value is only used while building the shifting model. DEFAULT:
    300'
  type: string
  inputBinding:
    prefix: --bw
- id: p_value
  doc: 'Pvalue cutoff for peak detection. DEFAULT: 1e-5'
  type: string
  inputBinding:
    prefix: --pvalue
- id: m_fold
  doc: Select the regions within MFOLD range of high- confidence enrichment ratio
    against background to build model. The regions must be lower than upper limit,
    and higher than the lower limit. DEFAULT:10,30
  type: string
  inputBinding:
    prefix: --mfold
- id: no_lambda
  doc: If True, AREM will use fixed background lambda as local lambda for every peak
    region. Normally, AREM calculates a dynamic local lambda to reflect the local
    bias due to potential chromatin structure.
  type: boolean
  inputBinding:
    prefix: --nolambda
- id: s_local
  doc: 'The small nearby region in basepairs to calculate dynamic lambda. This is
    used to capture the bias near the peak summit region. Invalid if there is no control
    data. DEFAULT: 1000'
  type: string
  inputBinding:
    prefix: --slocal
- id: l_local
  doc: 'The large nearby region in basepairs to calculate dynamic lambda. This is
    used to capture the surround bias. DEFAULT: 10000.'
  type: string
  inputBinding:
    prefix: --llocal
- id: off_auto
  doc: "Whether turn off the auto pair model process. If not set, when AREM failed\
    \ to build paired model, it will use the nomodel settings, the '--shiftsize' parameter\
    \ to shift and extend each tags. DEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --off-auto
- id: no_model
  doc: 'Whether or not to build the shifting model. If True, AREM will not build model.
    by default it means shifting size = 100, try to set shiftsize to change it. DEFAULT:
    False'
  type: boolean
  inputBinding:
    prefix: --nomodel
- id: shift_size
  doc: 'The arbitrary shift size in bp. When nomodel is true, AREM will use this value
    as 1/2 of fragment size. DEFAULT: 100'
  type: string
  inputBinding:
    prefix: --shiftsize
- id: keep_dup
  doc: "It controls the AREM behavior towards duplicate tags at the exact same location\
    \ -- the same coordination and the same strand. The default 'auto' option makes\
    \ MACS calculate the maximum tags at the exact same location based on binomal\
    \ distribution using 1e-5 as pvalue cutoff; and the 'all' option keeps every tags.\
    \ If an integer is given, at most this number of tags will be kept at the same\
    \ location. Default: auto"
  type: string
  inputBinding:
    prefix: --keep-dup
- id: to_small
  doc: 'When set, scale the larger dataset down to the smaller dataset, by default,
    the smaller dataset will be scaled towards the larger dataset. DEFAULT: False'
  type: boolean
  inputBinding:
    prefix: --to-small
- id: wig
  doc: 'Whether or not to save extended fragment pileup at every WIGEXTEND bps into
    a wiggle file. When --single- profile is on, only one file for the whole genome
    is saved. WARNING: this process is time/space consuming!!'
  type: boolean
  inputBinding:
    prefix: --wig
- id: bdg
  doc: "Whether or not to save extended fragment pileup at every bp into a bedGraph\
    \ file. When it's on, -w, --space and --call-subpeaks will be ignored. When --single-profile\
    \ is on, only one file for the whole genome is saved. WARNING: this process is\
    \ time/space consuming!!"
  type: boolean
  inputBinding:
    prefix: --bdg
- id: single_profile
  doc: 'When set, a single wiggle file will be saved for treatment and input. Default:
    False'
  type: boolean
  inputBinding:
    prefix: --single-profile
- id: space
  doc: The resoluation for saving wiggle files, by default, MACS will save the raw
    tag count every 10 bps. Usable only with '--wig' option.
  type: string
  inputBinding:
    prefix: --space
- id: call_sub_peaks
  doc: "If set, AREM will invoke Mali Salmon's PeakSplitter soft through system call.\
    \ If PeakSplitter can't be found, an instruction will be shown for downloading\
    \ and installing the PeakSplitter package. -w option needs to be on and -B should\
    \ be off to let it work. DEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --call-subpeaks
- id: verbose
  doc: 'Set verbose level. 0: only show critical message, 1: show additional warning
    message, 2: show process information, 3: show debug messages. DEFAULT:2'
  type: string
  inputBinding:
    prefix: --verbose
- id: diag
  doc: "Whether or not to produce a diagnosis report. It's up to 9X time consuming.\
    \ Please check 00README file for detail. DEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --diag
- id: fe_min
  doc: 'For diagnostics, min fold enrichment to consider. DEFAULT: 0'
  type: string
  inputBinding:
    prefix: --fe-min
- id: fe_max
  doc: 'For diagnostics, max fold enrichment to consider. DEFAULT: maximum fold enrichment'
  type: string
  inputBinding:
    prefix: --fe-max
- id: fe_step
  doc: 'For diagnostics, fold enrichment step.  DEFAULT: 20'
  type: string
  inputBinding:
    prefix: --fe-step
- id: no_em
  doc: 'Do NOT iteratively align multi-reads by E-M. Multi- read probabilities will
    be based on quality scores or uniform (if --no-quals) DEFAULT : FALSE'
  type: boolean
  inputBinding:
    prefix: --no-EM
- id: em_converge_diff
  doc: 'The minimum entropy change between iterations before halting E-M steps. DEFAULT
    : 1e-05'
  type: long
  inputBinding:
    prefix: --EM-converge-diff
- id: em_min_score
  doc: 'Minimum enrichment score. Windows below this threshold will all look the same
    to the aligner. DEFAULT : 1.5'
  type: long
  inputBinding:
    prefix: --EM-min-score
- id: em_max_score
  doc: 'Maximum enrichment score. Windows above this threshold will all look the same
    to the aligner, DEFAULT : No Maximum'
  type: long
  inputBinding:
    prefix: --EM-max-score
- id: em_show_graphs
  doc: 'generate diagnostic graphs for E-M. (requires MATPLOTLIB). DEFAULT : FALSE'
  type: boolean
  inputBinding:
    prefix: --EM-show-graphs
- id: quality_scale
  doc: "Initial alignment probabilities are determined by read quality and mismatches.\
    \ Each possible alignment is assigned a probability from the product over all\
    \ bases of either 1-p(ReadError_base) when there is no mismatch, or p(ReadError_base)\
    \ when the called base disagrees with the reference.  You may also select a uniform\
    \ initialization. Read quality scale is the must be one of ['auto', 'sanger+33',\
    \ 'illumina+64']. DEFAULT : auto"
  type: string
  inputBinding:
    prefix: --quality-scale
- id: random_multi
  doc: 'Convert all multi reads to unique reads by selecting one alignment at random
    for each read. DEFAULT : False'
  type: boolean
  inputBinding:
    prefix: --random-multi
- id: no_multi
  doc: Throw away all reads that have more than one alignment
  type: boolean
  inputBinding:
    prefix: --no-multi
- id: no_greedy_caller
  doc: 'Use AREM default peak caller instead of the greedy caller. This normally results
    in wider, less enriched peaks, especially with multi-reads. DEFAULT : False'
  type: boolean
  inputBinding:
    prefix: --no-greedy-caller
- id: no_map_quals
  doc: 'Do not use mapping probabilities as priors in each update step; just use relative
    enrichment. DEFAULT : False'
  type: boolean
  inputBinding:
    prefix: --no-map-quals
- id: prior_snp
  doc: 'Prior probability that a SNP occurs at any base in the genome. DEFAULT : 0.001'
  type: string
  inputBinding:
    prefix: --prior-snp
- id: write_read_probs
  doc: 'Write out all final reads, including their alignment probabilities as a BED
    file. DEFAULT : FALSE'
  type: boolean
  inputBinding:
    prefix: --write-read-probs
outputs: []
cwlVersion: v1.1
baseCommand:
- arem
