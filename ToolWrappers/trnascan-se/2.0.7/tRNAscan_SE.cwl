class: CommandLineTool
id: tRNAscan_SE.cwl
inputs:
- id: in_search_eukaryotic_trnas
  doc: ': search for eukaryotic tRNAs (default)'
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_search_bacterial_trnas
  doc: ': search for bacterial tRNAs'
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_search_archaeal_trnas
  doc: ': search for archaeal tRNAs'
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_search_mitochondrial_trnasoptions
  doc: ": search for mitochondrial tRNAs\noptions: mammal, vert"
  type: string?
  inputBinding:
    prefix: -M
- id: in_search_other_organellar
  doc: ': search for other organellar tRNAs'
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_use_general_trnas
  doc: ': use general tRNA model (cytoslic tRNAs from all 3 domains included)'
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_mt
  doc: ": use mito tRNA models for cytosolic/mito detemination\n(if not specified,\
    \ only cytosolic isotype-specific model scan will be performed)"
  type: string?
  inputBinding:
    prefix: --mt
- id: in_search_using_infernaldefault
  doc: ": search using Infernal\ndefault use with -E, -B, -A, or -G; optional for\
    \ -O"
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_max
  doc: ': maximum sensitivity mode - search using Infernal without hmm filter (very
    slow)'
  type: boolean?
  inputBinding:
    prefix: --max
- id: in_search_using_method
  doc: ": search using the legacy method (tRNAscan, EufindtRNA, and COVE)\nuse with\
    \ -E, -B, -A or -G"
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_cove
  doc: ": search using COVE analysis only (legacy, extremely slow)\ndefault use with\
    \ -O"
  type: boolean?
  inputBinding:
    prefix: --cove
- id: in_breakdown
  doc: ": show breakdown of primary and secondary structure components to\ncovariance\
    \ model bit scores"
  type: boolean?
  inputBinding:
    prefix: --breakdown
- id: in_no_pseudo
  doc: ': disable pseudogene checking'
  type: boolean?
  inputBinding:
    prefix: --nopseudo
- id: in_output
  doc: ': save final results in <file>'
  type: File?
  inputBinding:
    prefix: --output
- id: in_struct
  doc: ': save tRNA secondary structures to <file>'
  type: File?
  inputBinding:
    prefix: --struct
- id: in_iso_specific
  doc: ': save results using isotype-specific models in <file>'
  type: File?
  inputBinding:
    prefix: --isospecific
- id: in_stats
  doc: ": save statistics summary for run in <file>\n(speed, # tRNAs found in each\
    \ part of search, etc)"
  type: File?
  inputBinding:
    prefix: --stats
- id: in_bed
  doc: ': save results in BED file format of <file>'
  type: File?
  inputBinding:
    prefix: --bed
- id: in_fast_a
  doc: ': save predicted tRNA sequences in FASTA file format of <file>'
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_log
  doc: ': save log of program progress in <file>'
  type: File?
  inputBinding:
    prefix: --log
- id: in_detail
  doc: ': display prediction outputs in detailed view'
  type: boolean?
  inputBinding:
    prefix: --detail
- id: in_brief
  doc: ': brief output format (no column headers)'
  type: boolean?
  inputBinding:
    prefix: --brief
- id: in_prefix
  doc: ': use <label> prefix for all default output file names'
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_progress
  doc: ': display program progress messages'
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_quiet
  doc: ': quiet mode (credits & run option selections suppressed)'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_hit_src
  doc: ": show origin of hits (Ts=tRNAscan 1.4, Eu=EufindtRNA,\nBo=Both Ts and Eu,\
    \ Inf=Infernal)"
  type: boolean?
  inputBinding:
    prefix: --hitsrc
- id: in_score
  doc: ': set cutoff score (in bits) for reporting tRNAs (default=20)'
  type: long?
  inputBinding:
    prefix: --score
- id: in_gen_code
  doc: ": use alternate genetic codes specified in <file> for\ndetermining tRNA type"
  type: File?
  inputBinding:
    prefix: --gencode
- id: in_pad
  doc: ": use <number> nucleotides padding when passing first-pass\ntRNA bounds predictions\
    \ to CM analysis (default=8)"
  type: long?
  inputBinding:
    prefix: --pad
- id: in_len
  doc: ": set max length of tRNA intron+variable region for legacy search mode\n(default=116bp)"
  type: long?
  inputBinding:
    prefix: --len
- id: in_conf
  doc: ': tRNAscan-SE configuration file (default: tRNAscan-SE.conf)'
  type: File?
  inputBinding:
    prefix: --conf
- id: in_force_ow
  doc: ": do not prompt user before overwriting pre-existing\nresult files  (for batch\
    \ processing)"
  type: boolean?
  inputBinding:
    prefix: --forceow
- id: in_match
  doc: ": search only sequences with names matching <EXPR> string\n(<EXPR> may contain\
    \ * or ? wildcard chars)"
  type: string?
  inputBinding:
    prefix: --match
- id: in_search
  doc: ": start search at sequence with name matching <EXPR> string\nand continue\
    \ to end of input sequence file(s)"
  type: File?
  inputBinding:
    prefix: --search
- id: in_search_trnas_alternate
  doc: ': search for tRNAs with alternate models defined in configuration file'
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_ts_can
  doc: ': search using tRNAscan only (defaults to strict params)'
  type: boolean?
  inputBinding:
    prefix: --tscan
- id: in_t_mode
  doc: ": explicitly set tRNAscan params, where <mode>=R or S\n(R=relaxed, S=strict\
    \ tRNAscan v1.3 params)"
  type: double?
  inputBinding:
    prefix: --tmode
- id: in_verbose
  doc: ': save verbose tRNAscan 1.3 output to <file>'
  type: File?
  inputBinding:
    prefix: --verbose
- id: in_no_merge
  doc: ": Keep redundant tRNAscan 1.3 hits (don't filter out multiple\npredictions\
    \ per tRNA identification)"
  type: boolean?
  inputBinding:
    prefix: --nomerge
- id: in_eu_find
  doc: ": search using Eukaryotic tRNA finder (EufindtRNA) only\n(defaults to Normal\
    \ seach parameters when run alone,\nor to Relaxed search params when run with\
    \ Cove)"
  type: boolean?
  inputBinding:
    prefix: --eufind
- id: in_e_mode
  doc: ": explicitly set EufindtRNA params, where <mode>=R, N, or S\n(relaxed, normal,\
    \ or strict)"
  type: string?
  inputBinding:
    prefix: --emode
- id: in_is_core
  doc: ': manually set "intermediate" cutoff score for EufindtRNA'
  type: string?
  inputBinding:
    prefix: --iscore
- id: in_fs_res
  doc: ": save first-pass scan results from EufindtRNA, tRNAscan, or\nInfernal hmm\
    \ in <file> in tabular results format"
  type: File?
  inputBinding:
    prefix: --fsres
- id: in_mid
  doc: ': fast scan mode - search using Infernal with mid-level strictness of hmm
    filter'
  type: boolean?
  inputBinding:
    prefix: --mid
- id: in_false_pos
  doc: ": save first-pass candidate tRNAs in <file> that were then\nfound to be false\
    \ positives by second-pass analysis"
  type: File?
  inputBinding:
    prefix: --falsepos
- id: in_missed
  doc: ": save all seqs that do NOT have at least one\ntRNA prediction in them (aka\
    \ \"missed\" seqs)"
  type: File?
  inputBinding:
    prefix: --missed
- id: in_thread
  doc: ': number of threads used for running infernal (default is to use available
    threads)'
  type: long?
  inputBinding:
    prefix: --thread
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: ': use <label> prefix for all default output file names'
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
- id: out_verbose
  doc: ': save verbose tRNAscan 1.3 output to <file>'
  type: File?
  outputBinding:
    glob: $(inputs.in_verbose)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/trnascan-se:2.0.7--pl526h516909a_0
cwlVersion: v1.1
baseCommand:
- tRNAscan-SE
