class: CommandLineTool
id: cmfinder04.pl.cwl
inputs:
- id: minc_and_score_in_final
  doc: "Pass --min-cand-score-in-final <number> to cmfinder.  WARNING: there's a difference\
    \ between using this flag (where even intermediate motifs will avoid these hits)\
    \ and taking the low-scoring instances out of the final alignments (which might\
    \ be combinations of motifs in which the sequence would have been lower-scoring)."
  type: string
  inputBinding:
    prefix: -minCandScoreInFinal
- id: filter_non_frag
  doc: Pass --filter-non-frag to cmfinder
  type: boolean
  inputBinding:
    prefix: -filterNonFrag
- id: column_only_base_pair_probs
  doc: Pass --column-only-base-pair-probs to cmfinder
  type: boolean
  inputBinding:
    prefix: -columnOnlyBasePairProbs
- id: save_timer
  doc: create tab-delimited <file> containing timing stats on various sub-processes
    of this script.  the first tab-delimited field is the description of the sub-process,
    the second field is the total CPU time (user+sys) and the third field is the wall-clock
    time.  Sub-processes can occur in multiple lines if they are run multiple timers,
    so the caller should add them.  Due to my laziness, the time of the clustalw program
    (if used) is not counted.
  type: File
  inputBinding:
    prefix: -saveTimer
- id: cpu
  doc: use <num> CPUs for functionality that can use multi-CPUs (currently only the
    internal cmsearch commands in cmfinder04)
  type: string
  inputBinding:
    prefix: -cpu
- id: all_cpus
  doc: equivalent to -cpu X , where X is the number of available processors.
  type: boolean
  inputBinding:
    prefix: -allCpus
- id: can_ds_parallel
  doc: run the two cands jobs in parallel, even if -cpu 1
  type: boolean
  inputBinding:
    prefix: -candsParallel
- id: outfile_suffix
  doc: add <string> to the output file names.  this is useful if you want to run the
    script in multiple ways in the same directory.
  type: string
  inputBinding:
    prefix: -outFileSuffix
- id: version
  doc: Show package version
  type: boolean
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- cmfinder04.pl
