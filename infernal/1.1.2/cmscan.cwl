class: CommandLineTool
id: cmscan.cwl
inputs:
- id: cmdb
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: g
  doc: ': configure CM for glocal alignment [default: local]'
  type: boolean
  inputBinding:
    prefix: -g
- id: z
  doc: ': set search space size in *Mb* to <x> for E-value calculations  (x>0)'
  type: string
  inputBinding:
    prefix: -Z
- id: devhelp
  doc: ': show list of otherwise hidden developer/expert options'
  type: boolean
  inputBinding:
    prefix: --devhelp
- id: o
  doc: ': direct output to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: tbl_out
  doc: ': save parseable table of hits to file <s>'
  type: string
  inputBinding:
    prefix: --tblout
- id: fmt
  doc: ': set hit table format to <n>  (1<=n<=2)'
  type: string
  inputBinding:
    prefix: --fmt
- id: acc
  doc: ': prefer accessions over names in output'
  type: boolean
  inputBinding:
    prefix: --acc
- id: no_ali
  doc: ": don't output alignments, so output is smaller"
  type: boolean
  inputBinding:
    prefix: --noali
- id: no_text_w
  doc: ': unlimit ASCII text output line width'
  type: boolean
  inputBinding:
    prefix: --notextw
- id: text_w
  doc: ': set max width of ASCII text output lines  [120]  (n>=120)'
  type: string
  inputBinding:
    prefix: --textw
- id: verbose
  doc: ': report extra information; mainly useful for debugging'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: e
  doc: ': report sequences <= this E-value threshold in output  [10.0]  (x>0)'
  type: string
  inputBinding:
    prefix: -E
- id: t
  doc: ': report sequences >= this score threshold in output'
  type: string
  inputBinding:
    prefix: -T
- id: ince
  doc: ': consider sequences <= this E-value threshold as significant  [0.01]'
  type: string
  inputBinding:
    prefix: --incE
- id: in_ct
  doc: ': consider sequences >= this score threshold as significant'
  type: string
  inputBinding:
    prefix: --incT
- id: cut_ga
  doc: ": use CM's GA gathering cutoffs as reporting thresholds"
  type: boolean
  inputBinding:
    prefix: --cut_ga
- id: cut_nc
  doc: ": use CM's NC noise cutoffs as reporting thresholds"
  type: boolean
  inputBinding:
    prefix: --cut_nc
- id: cut_tc
  doc: ": use CM's TC trusted cutoffs as reporting thresholds"
  type: boolean
  inputBinding:
    prefix: --cut_tc
- id: max
  doc: ': turn all heuristic filters off (slow)'
  type: boolean
  inputBinding:
    prefix: --max
- id: no_hmm
  doc: ': skip all HMM filter stages, use only CM (slow)'
  type: boolean
  inputBinding:
    prefix: --nohmm
- id: mid
  doc: ': skip first two HMM filter stages (SSV & Vit)'
  type: boolean
  inputBinding:
    prefix: --mid
- id: default
  doc: ': default: run search space size-dependent pipeline  [default]'
  type: boolean
  inputBinding:
    prefix: --default
- id: rf_am
  doc: ': set heuristic filters at Rfam-level (fast)'
  type: boolean
  inputBinding:
    prefix: --rfam
- id: hmm_only
  doc: ": use HMM only, don't use a CM at all"
  type: boolean
  inputBinding:
    prefix: --hmmonly
- id: fz
  doc: ': set filters to defaults used for a search space of size <x> Mb'
  type: string
  inputBinding:
    prefix: --FZ
- id: fmid
  doc: ': with --mid, set P-value threshold for HMM stages to <x>  [0.02]'
  type: string
  inputBinding:
    prefix: --Fmid
- id: not_run_c
  doc: ': do not allow truncated hits at sequence termini'
  type: boolean
  inputBinding:
    prefix: --notrunc
- id: any_trunc
  doc: ': allow full and truncated hits anywhere within sequences'
  type: boolean
  inputBinding:
    prefix: --anytrunc
- id: no_hmm_only
  doc: ': never run HMM-only mode, not even for models with 0 basepairs'
  type: boolean
  inputBinding:
    prefix: --nohmmonly
- id: nonull3
  doc: ': turn off the NULL3 post hoc additional null model'
  type: boolean
  inputBinding:
    prefix: --nonull3
- id: mx_size
  doc: ': set max allowed alnment mx size to <x> Mb [df: autodetermined]'
  type: string
  inputBinding:
    prefix: --mxsize
- id: smx_size
  doc: ': set max allowed size of search DP matrices to <x> Mb  [128.]'
  type: string
  inputBinding:
    prefix: --smxsize
- id: cy_k
  doc: ': use scanning CM CYK algorithm, not Inside in final stage'
  type: boolean
  inputBinding:
    prefix: --cyk
- id: acy_k
  doc: ': align hits with CYK, not optimal accuracy'
  type: boolean
  inputBinding:
    prefix: --acyk
- id: wcx
  doc: ': set W (expected max hit len) as <x> * cm->clen (model len)'
  type: string
  inputBinding:
    prefix: --wcx
- id: top_only
  doc: ': only search the top strand'
  type: boolean
  inputBinding:
    prefix: --toponly
- id: bottom_only
  doc: ': only search the bottom strand'
  type: boolean
  inputBinding:
    prefix: --bottomonly
- id: q_format
  doc: ': assert query <seqfile> is in format <s>: no autodetection'
  type: string
  inputBinding:
    prefix: --qformat
- id: g_list
  doc: ': configure CMs listed in file <f> in glocal mode, others in local'
  type: string
  inputBinding:
    prefix: --glist
- id: clan_in
  doc: ': read clan information from file <f>'
  type: string
  inputBinding:
    prefix: --clanin
- id: o_clan
  doc: ": w/'--fmt 2' and '--tblout', only mark overlaps within clans"
  type: boolean
  inputBinding:
    prefix: --oclan
- id: o_skip
  doc: ": w/'--fmt 2' and '--tblout', do not output lower scoring overlaps"
  type: boolean
  inputBinding:
    prefix: --oskip
- id: cpu
  doc: ': number of parallel CPU workers to use for multithreads'
  type: string
  inputBinding:
    prefix: --cpu
outputs: []
cwlVersion: v1.1
baseCommand:
- cmscan
