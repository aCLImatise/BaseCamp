class: CommandLineTool
id: cmscan.cwl
inputs:
- id: in_configure_cm_glocal
  doc: ': configure CM for glocal alignment [default: local]'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_set_search_size
  doc: ': set search space size in *Mb* to <x> for E-value calculations  (x>0)'
  type: long?
  inputBinding:
    prefix: -Z
- id: in_devhelp
  doc: ': show list of otherwise hidden developer/expert options'
  type: boolean?
  inputBinding:
    prefix: --devhelp
- id: in_direct_output_file
  doc: ': direct output to file <f>, not stdout'
  type: File?
  inputBinding:
    prefix: -o
- id: in_tbl_out
  doc: ': save parseable table of hits to file <s>'
  type: File?
  inputBinding:
    prefix: --tblout
- id: in_fmt
  doc: ': set hit table format to <n>  (1<=n<=2)'
  type: long?
  inputBinding:
    prefix: --fmt
- id: in_acc
  doc: ': prefer accessions over names in output'
  type: boolean?
  inputBinding:
    prefix: --acc
- id: in_no_ali
  doc: ": don't output alignments, so output is smaller"
  type: boolean?
  inputBinding:
    prefix: --noali
- id: in_no_text_w
  doc: ': unlimit ASCII text output line width'
  type: boolean?
  inputBinding:
    prefix: --notextw
- id: in_text_w
  doc: ': set max width of ASCII text output lines  [120]  (n>=120)'
  type: long?
  inputBinding:
    prefix: --textw
- id: in_verbose
  doc: ': report extra information; mainly useful for debugging'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_report_sequences_threshold
  doc: ': report sequences <= this E-value threshold in output  [10.0]  (x>0)'
  type: double?
  inputBinding:
    prefix: -E
- id: in_report_sequences_score
  doc: ': report sequences >= this score threshold in output'
  type: string?
  inputBinding:
    prefix: -T
- id: in_ince
  doc: ': consider sequences <= this E-value threshold as significant  [0.01]'
  type: double?
  inputBinding:
    prefix: --incE
- id: in_in_ct
  doc: ': consider sequences >= this score threshold as significant'
  type: string?
  inputBinding:
    prefix: --incT
- id: in_cut_ga
  doc: ": use CM's GA gathering cutoffs as reporting thresholds"
  type: boolean?
  inputBinding:
    prefix: --cut_ga
- id: in_cut_nc
  doc: ": use CM's NC noise cutoffs as reporting thresholds"
  type: boolean?
  inputBinding:
    prefix: --cut_nc
- id: in_cut_tc
  doc: ": use CM's TC trusted cutoffs as reporting thresholds"
  type: boolean?
  inputBinding:
    prefix: --cut_tc
- id: in_max
  doc: ': turn all heuristic filters off (slow)'
  type: boolean?
  inputBinding:
    prefix: --max
- id: in_no_hmm
  doc: ': skip all HMM filter stages, use only CM (slow)'
  type: boolean?
  inputBinding:
    prefix: --nohmm
- id: in_mid
  doc: ': skip first two HMM filter stages (SSV & Vit)'
  type: boolean?
  inputBinding:
    prefix: --mid
- id: in_default
  doc: ': default: run search space size-dependent pipeline  [default]'
  type: boolean?
  inputBinding:
    prefix: --default
- id: in_rf_am
  doc: ': set heuristic filters at Rfam-level (fast)'
  type: boolean?
  inputBinding:
    prefix: --rfam
- id: in_hmm_only
  doc: ": use HMM only, don't use a CM at all"
  type: boolean?
  inputBinding:
    prefix: --hmmonly
- id: in_fz
  doc: ': set filters to defaults used for a search space of size <x> Mb'
  type: long?
  inputBinding:
    prefix: --FZ
- id: in_fmid
  doc: ': with --mid, set P-value threshold for HMM stages to <x>  [0.02]'
  type: double?
  inputBinding:
    prefix: --Fmid
- id: in_not_run_c
  doc: ': do not allow truncated hits at sequence termini'
  type: boolean?
  inputBinding:
    prefix: --notrunc
- id: in_any_trunc
  doc: ': allow full and truncated hits anywhere within sequences'
  type: boolean?
  inputBinding:
    prefix: --anytrunc
- id: in_no_hmm_only
  doc: ': never run HMM-only mode, not even for models with 0 basepairs'
  type: boolean?
  inputBinding:
    prefix: --nohmmonly
- id: in_no_null_three
  doc: ': turn off the NULL3 post hoc additional null model'
  type: boolean?
  inputBinding:
    prefix: --nonull3
- id: in_mx_size
  doc: ': set max allowed alnment mx size to <x> Mb [df: autodetermined]'
  type: long?
  inputBinding:
    prefix: --mxsize
- id: in_smx_size
  doc: ': set max allowed size of search DP matrices to <x> Mb  [128.]'
  type: long?
  inputBinding:
    prefix: --smxsize
- id: in_cy_k
  doc: ': use scanning CM CYK algorithm, not Inside in final stage'
  type: boolean?
  inputBinding:
    prefix: --cyk
- id: in_acy_k
  doc: ': align hits with CYK, not optimal accuracy'
  type: boolean?
  inputBinding:
    prefix: --acyk
- id: in_wcx
  doc: ': set W (expected max hit len) as <x> * cm->clen (model len)'
  type: long?
  inputBinding:
    prefix: --wcx
- id: in_top_only
  doc: ': only search the top strand'
  type: boolean?
  inputBinding:
    prefix: --toponly
- id: in_bottom_only
  doc: ': only search the bottom strand'
  type: boolean?
  inputBinding:
    prefix: --bottomonly
- id: in_q_format
  doc: ': assert query <seqfile> is in format <s>: no autodetection'
  type: string?
  inputBinding:
    prefix: --qformat
- id: in_g_list
  doc: ': configure CMs listed in file <f> in glocal mode, others in local'
  type: File?
  inputBinding:
    prefix: --glist
- id: in_clan_in
  doc: ': read clan information from file <f>'
  type: File?
  inputBinding:
    prefix: --clanin
- id: in_o_clan
  doc: ": w/'--fmt 2' and '--tblout', only mark overlaps within clans"
  type: boolean?
  inputBinding:
    prefix: --oclan
- id: in_o_skip
  doc: ": w/'--fmt 2' and '--tblout', do not output lower scoring overlaps"
  type: boolean?
  inputBinding:
    prefix: --oskip
- id: in_cpu
  doc: ': number of parallel CPU workers to use for multithreads'
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_cmdb
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_direct_output_file
  doc: ': direct output to file <f>, not stdout'
  type: File?
  outputBinding:
    glob: $(inputs.in_direct_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/infernal:1.1.4--h779adbc_0
cwlVersion: v1.1
baseCommand:
- cmscan
