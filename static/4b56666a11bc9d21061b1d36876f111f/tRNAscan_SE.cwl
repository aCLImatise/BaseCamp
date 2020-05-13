class: CommandLineTool
id: tRNAscan_SE.cwl
inputs:
- id: e
  doc: ': search for eukaryotic tRNAs (default)'
  type: boolean
  inputBinding:
    prefix: -E
- id: b
  doc: ': search for bacterial tRNAs'
  type: boolean
  inputBinding:
    prefix: -B
- id: a
  doc: ': search for archaeal tRNAs'
  type: boolean
  inputBinding:
    prefix: -A
- id: m
  doc: ': search for mitochondrial tRNAs options: mammal, vert'
  type: string
  inputBinding:
    prefix: -M
- id: o
  doc: ': search for other organellar tRNAs'
  type: boolean
  inputBinding:
    prefix: -O
- id: g
  doc: ': use general tRNA model (cytoslic tRNAs from all 3 domains included)'
  type: boolean
  inputBinding:
    prefix: -G
- id: mt
  doc: ': use mito tRNA models for cytosolic/mito detemination (if not specified,
    only cytosolic isotype-specific model scan will be performed)'
  type: string
  inputBinding:
    prefix: --mt
- id: i
  doc: ': search using Infernal default use with -E, -B, -A, or -G; optional for -O'
  type: boolean
  inputBinding:
    prefix: -I
- id: max
  doc: ': maximum sensitivity mode - search using Infernal without hmm filter (very
    slow)'
  type: boolean
  inputBinding:
    prefix: --max
- id: l
  doc: ': search using the legacy method (tRNAscan, EufindtRNA, and COVE) use with
    -E, -B, -A or -G'
  type: boolean
  inputBinding:
    prefix: -L
- id: cove
  doc: ': search using COVE analysis only (legacy, extremely slow) default use with
    -O'
  type: boolean
  inputBinding:
    prefix: --cove
- id: breakdown
  doc: ': show breakdown of primary and secondary structure components to covariance
    model bit scores'
  type: boolean
  inputBinding:
    prefix: --breakdown
- id: no_pseudo
  doc: ': disable pseudogene checking'
  type: boolean
  inputBinding:
    prefix: --nopseudo
- id: prefix
  doc: ': use <label> prefix for all default output file names'
  type: string
  inputBinding:
    prefix: --prefix
- id: progress
  doc: ': display program progress messages'
  type: boolean
  inputBinding:
    prefix: --progress
- id: quiet
  doc: ': quiet mode (credits & run option selections suppressed)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: hit_src
  doc: ': show origin of hits (Ts=tRNAscan 1.4, Eu=EufindtRNA,  Bo=Both Ts and Eu,
    Inf=Infernal)'
  type: boolean
  inputBinding:
    prefix: --hitsrc
- id: score
  doc: ': set cutoff score (in bits) for reporting tRNAs (default=20)'
  type: string
  inputBinding:
    prefix: --score
- id: gen_code
  doc: ': use alternate genetic codes specified in <file> for determining tRNA type'
  type: File
  inputBinding:
    prefix: --gencode
- id: pad
  doc: ': use <number> nucleotides padding when passing first-pass tRNA bounds predictions
    to CM analysis (default=8)'
  type: string
  inputBinding:
    prefix: --pad
- id: len
  doc: ': set max length of tRNA intron+variable region for legacy search mode (default=116bp)'
  type: long
  inputBinding:
    prefix: --len
- id: conf
  doc: ': tRNAscan-SE configuration file (default: tRNAscan-SE.conf)'
  type: File
  inputBinding:
    prefix: --conf
- id: force_ow
  doc: ': do not prompt user before overwriting pre-existing result files  (for batch
    processing)'
  type: boolean
  inputBinding:
    prefix: --forceow
- id: match
  doc: ': search only sequences with names matching <EXPR> string (<EXPR> may contain
    * or ? wildcard chars)'
  type: string
  inputBinding:
    prefix: --match
- id: search
  doc: ': start search at sequence with name matching <EXPR> string and continue to
    end of input sequence file(s)'
  type: string
  inputBinding:
    prefix: --search
- id: u
  doc: ': search for tRNAs with alternate models defined in configuration file'
  type: boolean
  inputBinding:
    prefix: -U
- id: ts_can
  doc: ': search using tRNAscan only (defaults to strict params)'
  type: boolean
  inputBinding:
    prefix: --tscan
- id: t_mode
  doc: ': explicitly set tRNAscan params, where <mode>=R or S (R=relaxed, S=strict
    tRNAscan v1.3 params)'
  type: string
  inputBinding:
    prefix: --tmode
- id: verbose
  doc: ': save verbose tRNAscan 1.3 output to <file>'
  type: File
  inputBinding:
    prefix: --verbose
- id: no_merge
  doc: ": Keep redundant tRNAscan 1.3 hits (don't filter out multiple predictions\
    \ per tRNA identification)"
  type: boolean
  inputBinding:
    prefix: --nomerge
- id: eu_find
  doc: ': search using Eukaryotic tRNA finder (EufindtRNA) only (defaults to Normal
    seach parameters when run alone, or to Relaxed search params when run with Cove)'
  type: boolean
  inputBinding:
    prefix: --eufind
- id: e_mode
  doc: ': explicitly set EufindtRNA params, where <mode>=R, N, or S (relaxed, normal,
    or strict)'
  type: string
  inputBinding:
    prefix: --emode
- id: is_core
  doc: ': manually set "intermediate" cutoff score for EufindtRNA'
  type: string
  inputBinding:
    prefix: --iscore
- id: fs_res
  doc: ': save first-pass scan results from EufindtRNA, tRNAscan, or Infernal hmm
    in <file> in tabular results format'
  type: File
  inputBinding:
    prefix: --fsres
- id: mid
  doc: ': fast scan mode - search using Infernal with mid-level strictness of hmm
    filter'
  type: boolean
  inputBinding:
    prefix: --mid
- id: false_pos
  doc: ': save first-pass candidate tRNAs in <file> that were then found to be false
    positives by second-pass analysis'
  type: File
  inputBinding:
    prefix: --falsepos
- id: missed
  doc: ': save all seqs that do NOT have at least one tRNA prediction in them (aka
    "missed" seqs)'
  type: File
  inputBinding:
    prefix: --missed
- id: thread
  doc: ': number of threads used for running infernal (default is to use available
    threads)'
  type: string
  inputBinding:
    prefix: --thread
outputs: []
cwlVersion: v1.1
baseCommand:
- tRNAscan-SE
