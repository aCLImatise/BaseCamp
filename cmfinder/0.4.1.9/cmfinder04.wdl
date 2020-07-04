version 1.0

task Cmfinder04.pl {
  input {
    String? minc_and_score_in_final
    Boolean? filter_non_frag
    Boolean? column_only_base_pair_probs
    File? save_timer
    String? cpu
    Boolean? all_cpus
    Boolean? can_ds_parallel
    String? outfile_suffix
    Boolean? version
  }
  command <<<
    cmfinder04.pl \
      ~{if defined(minc_and_score_in_final) then ("-minCandScoreInFinal " +  '"' + minc_and_score_in_final + '"') else ""} \
      ~{true="-filterNonFrag" false="" filter_non_frag} \
      ~{true="-columnOnlyBasePairProbs" false="" column_only_base_pair_probs} \
      ~{if defined(save_timer) then ("-saveTimer " +  '"' + save_timer + '"') else ""} \
      ~{if defined(cpu) then ("-cpu " +  '"' + cpu + '"') else ""} \
      ~{true="-allCpus" false="" all_cpus} \
      ~{true="-candsParallel" false="" can_ds_parallel} \
      ~{if defined(outfile_suffix) then ("-outFileSuffix " +  '"' + outfile_suffix + '"') else ""} \
      ~{true="-version" false="" version}
  >>>
  parameter_meta {
    minc_and_score_in_final: "Pass --min-cand-score-in-final <number> to cmfinder.  WARNING: there's a difference between using this flag (where even intermediate motifs will avoid these hits) and taking the low-scoring instances out of the final alignments (which might be combinations of motifs in which the sequence would have been lower-scoring)."
    filter_non_frag: "Pass --filter-non-frag to cmfinder"
    column_only_base_pair_probs: "Pass --column-only-base-pair-probs to cmfinder"
    save_timer: "create tab-delimited <file> containing timing stats on various sub-processes of this script.  the first tab-delimited field is the description of the sub-process, the second field is the total CPU time (user+sys) and the third field is the wall-clock time.  Sub-processes can occur in multiple lines if they are run multiple timers, so the caller should add them.  Due to my laziness, the time of the clustalw program (if used) is not counted."
    cpu: "use <num> CPUs for functionality that can use multi-CPUs (currently only the internal cmsearch commands in cmfinder04)"
    all_cpus: "equivalent to -cpu X , where X is the number of available processors."
    can_ds_parallel: "run the two cands jobs in parallel, even if -cpu 1"
    outfile_suffix: "add <string> to the output file names.  this is useful if you want to run the script in multiple ways in the same directory."
    version: "Show package version"
  }
}