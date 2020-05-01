#!/usr/bin/env cwl-runner

baseCommand:
- cmfinder04.pl
class: CommandLineTool
cwlVersion: v1.0
id: cmfinder04.pl
inputs:
- doc: "Pass --min-cand-score-in-final <number> to cmfinder.  WARNING: there's a difference\
    \ between using this flag (where even intermediate motifs will avoid these hits)\
    \ and taking the low-scoring instances out of the final alignments (which might\
    \ be combinations of motifs in which the sequence would have been lower-scoring)."
  id: minc_and_score_in_final
  inputBinding:
    prefix: -minCandScoreInFinal
  type: string
- doc: Pass --filter-non-frag to cmfinder
  id: filter_non_frag
  inputBinding:
    prefix: -filterNonFrag
  type: boolean
- doc: Pass --column-only-base-pair-probs to cmfinder
  id: column_only_base_pair_probs
  inputBinding:
    prefix: -columnOnlyBasePairProbs
  type: boolean
- doc: create tab-delimited <file> containing timing stats on various sub-processes
    of this script.  the first tab-delimited field is the description of the sub-process,
    the second field is the total CPU time (user+sys) and the third field is the wall-clock
    time.  Sub-processes can occur in multiple lines if they are run multiple timers,
    so the caller should add them.  Due to my laziness, the time of the clustalw program
    (if used) is not counted.
  id: save_timer
  inputBinding:
    prefix: -saveTimer
  type: File
- doc: use <num> CPUs for functionality that can use multi-CPUs (currently only the
    internal cmsearch commands in cmfinder04)
  id: cpu
  inputBinding:
    prefix: -cpu
  type: string
- doc: equivalent to -cpu X , where X is the number of available processors.
  id: all_cpus
  inputBinding:
    prefix: -allCpus
  type: boolean
- doc: run the two cands jobs in parallel, even if -cpu 1
  id: can_ds_parallel
  inputBinding:
    prefix: -candsParallel
  type: boolean
- doc: add <string> to the output file names.  this is useful if you want to run the
    script in multiple ways in the same directory.
  id: outfile_suffix
  inputBinding:
    prefix: -outFileSuffix
  type: string
- doc: Show package version
  id: version
  inputBinding:
    prefix: -version
  type: boolean
