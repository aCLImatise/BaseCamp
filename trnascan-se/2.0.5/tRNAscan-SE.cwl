#!/usr/bin/env cwl-runner

baseCommand:
- tRNAscan-SE
class: CommandLineTool
cwlVersion: v1.0
id: trnascan-se
inputs:
- doc: ': search for eukaryotic tRNAs (default)'
  id: e
  inputBinding:
    prefix: -E
  type: boolean
- doc: ': search for bacterial tRNAs'
  id: b
  inputBinding:
    prefix: -B
  type: boolean
- doc: ': search for archaeal tRNAs'
  id: a
  inputBinding:
    prefix: -A
  type: boolean
- doc: ': search for mitochondrial tRNAs options: mammal, vert'
  id: m
  inputBinding:
    prefix: -M
  type: string
- doc: ': search for other organellar tRNAs'
  id: o
  inputBinding:
    prefix: -O
  type: boolean
- doc: ': use general tRNA model (cytoslic tRNAs from all 3 domains included)'
  id: g
  inputBinding:
    prefix: -G
  type: boolean
- doc: ': use mito tRNA models for cytosolic/mito detemination (if not specified,
    only cytosolic isotype-specific model scan will be performed)'
  id: mt
  inputBinding:
    prefix: --mt
  type: string
- doc: ': search using Infernal default use with -E, -B, -A, or -G; optional for -O'
  id: i
  inputBinding:
    prefix: -I
  type: boolean
- doc: ': maximum sensitivity mode - search using Infernal without hmm filter (very
    slow)'
  id: max
  inputBinding:
    prefix: --max
  type: boolean
- doc: ': search using the legacy method (tRNAscan, EufindtRNA, and COVE) use with
    -E, -B, -A or -G'
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: ': search using COVE analysis only (legacy, extremely slow) default use with
    -O'
  id: cove
  inputBinding:
    prefix: --cove
  type: boolean
- doc: ': show breakdown of primary and secondary structure components to covariance
    model bit scores'
  id: breakdown
  inputBinding:
    prefix: --breakdown
  type: boolean
- doc: ': disable pseudogene checking'
  id: no_pseudo
  inputBinding:
    prefix: --nopseudo
  type: boolean
- doc: ': use <label> prefix for all default output file names'
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: ': display program progress messages'
  id: progress
  inputBinding:
    prefix: --progress
  type: boolean
- doc: ': quiet mode (credits & run option selections suppressed)'
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: ': show origin of hits (Ts=tRNAscan 1.4, Eu=EufindtRNA,  Bo=Both Ts and Eu,
    Inf=Infernal)'
  id: hit_src
  inputBinding:
    prefix: --hitsrc
  type: boolean
- doc: ': set cutoff score (in bits) for reporting tRNAs (default=20)'
  id: score
  inputBinding:
    prefix: --score
  type: string
- doc: ': use alternate genetic codes specified in <file> for determining tRNA type'
  id: gen_code
  inputBinding:
    prefix: --gencode
  type: File
- doc: ': use <number> nucleotides padding when passing first-pass tRNA bounds predictions
    to CM analysis (default=8)'
  id: pad
  inputBinding:
    prefix: --pad
  type: string
- doc: ': set max length of tRNA intron+variable region for legacy search mode (default=116bp)'
  id: len
  inputBinding:
    prefix: --len
  type: long
- doc: ': tRNAscan-SE configuration file (default: tRNAscan-SE.conf)'
  id: conf
  inputBinding:
    prefix: --conf
  type: File
- doc: ': do not prompt user before overwriting pre-existing result files  (for batch
    processing)'
  id: force_ow
  inputBinding:
    prefix: --forceow
  type: boolean
- doc: ': search only sequences with names matching <EXPR> string (<EXPR> may contain
    * or ? wildcard chars)'
  id: match
  inputBinding:
    prefix: --match
  type: string
- doc: ': start search at sequence with name matching <EXPR> string and continue to
    end of input sequence file(s)'
  id: search
  inputBinding:
    prefix: --search
  type: string
- doc: ': search for tRNAs with alternate models defined in configuration file'
  id: u
  inputBinding:
    prefix: -U
  type: boolean
- doc: ': search using tRNAscan only (defaults to strict params)'
  id: ts_can
  inputBinding:
    prefix: --tscan
  type: boolean
- doc: ': explicitly set tRNAscan params, where <mode>=R or S (R=relaxed, S=strict
    tRNAscan v1.3 params)'
  id: t_mode
  inputBinding:
    prefix: --tmode
  type: string
- doc: ': save verbose tRNAscan 1.3 output to <file>'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: File
- doc: ": Keep redundant tRNAscan 1.3 hits (don't filter out multiple predictions\
    \ per tRNA identification)"
  id: no_merge
  inputBinding:
    prefix: --nomerge
  type: boolean
- doc: ': search using Eukaryotic tRNA finder (EufindtRNA) only (defaults to Normal
    seach parameters when run alone, or to Relaxed search params when run with Cove)'
  id: eu_find
  inputBinding:
    prefix: --eufind
  type: boolean
- doc: ': explicitly set EufindtRNA params, where <mode>=R, N, or S (relaxed, normal,
    or strict)'
  id: e_mode
  inputBinding:
    prefix: --emode
  type: string
- doc: ': manually set "intermediate" cutoff score for EufindtRNA'
  id: is_core
  inputBinding:
    prefix: --iscore
  type: string
- doc: ': save first-pass scan results from EufindtRNA, tRNAscan, or Infernal hmm
    in <file> in tabular results format'
  id: fs_res
  inputBinding:
    prefix: --fsres
  type: File
- doc: ': fast scan mode - search using Infernal with mid-level strictness of hmm
    filter'
  id: mid
  inputBinding:
    prefix: --mid
  type: boolean
- doc: ': save first-pass candidate tRNAs in <file> that were then found to be false
    positives by second-pass analysis'
  id: false_pos
  inputBinding:
    prefix: --falsepos
  type: File
- doc: ': save all seqs that do NOT have at least one tRNA prediction in them (aka
    "missed" seqs)'
  id: missed
  inputBinding:
    prefix: --missed
  type: File
- doc: ': number of threads used for running infernal (default is to use available
    threads)'
  id: thread
  inputBinding:
    prefix: --thread
  type: string
