version 1.0

task Cmfinder04pl {
  input {
    Int? maximum_number_default
    Int? minimum_length_candidates
    Int? maximum_length_candidates
    Int? fraction_sequences_expected
    Int? s_one
    Int? s_two
    Int? min_span_one
    Int? max_span_one
    Int? min_span_two
    Int? max_span_two
    Boolean? combine
    File? motif_list
    Int? minimum_overlap_combining
    Int? minimum_number_sequences
    File? em_seq
    Boolean? like_old
    Boolean? fragmentary
    Boolean? amaa
    Boolean? use_old_cm_finder
    Boolean? skip_clustalw
    Boolean? just_get_cm_finder_command
    File? copy_cm_finder_runs_from_log
    Int? comma_sep_em_flags
    String? comma_sep_summarize_flags
    String? commas_epc_and_fflags
    Int? minc_and_score_in_final
    Boolean? filter_non_frag
    Boolean? column_only_base_pair_probs
    File? save_timer
    Int? cpu
    Boolean? all_cpus
    Boolean? can_ds_parallel
    File? outfile_suffix
    Boolean? version
  }
  command <<<
    cmfinder04_pl \
      ~{if defined(maximum_number_default) then ("-c " +  '"' + maximum_number_default + '"') else ""} \
      ~{if defined(minimum_length_candidates) then ("-m " +  '"' + minimum_length_candidates + '"') else ""} \
      ~{if defined(maximum_length_candidates) then ("-M " +  '"' + maximum_length_candidates + '"') else ""} \
      ~{if defined(fraction_sequences_expected) then ("-f " +  '"' + fraction_sequences_expected + '"') else ""} \
      ~{if defined(s_one) then ("-s1 " +  '"' + s_one + '"') else ""} \
      ~{if defined(s_two) then ("-s2 " +  '"' + s_two + '"') else ""} \
      ~{if defined(min_span_one) then ("-minspan1 " +  '"' + min_span_one + '"') else ""} \
      ~{if defined(max_span_one) then ("-maxspan1 " +  '"' + max_span_one + '"') else ""} \
      ~{if defined(min_span_two) then ("-minspan2 " +  '"' + min_span_two + '"') else ""} \
      ~{if defined(max_span_two) then ("-maxspan2 " +  '"' + max_span_two + '"') else ""} \
      ~{if (combine) then "-combine" else ""} \
      ~{if defined(motif_list) then ("-motifList " +  '"' + motif_list + '"') else ""} \
      ~{if defined(minimum_overlap_combining) then ("-o " +  '"' + minimum_overlap_combining + '"') else ""} \
      ~{if defined(minimum_number_sequences) then ("-n " +  '"' + minimum_number_sequences + '"') else ""} \
      ~{if defined(em_seq) then ("-emSeq " +  '"' + em_seq + '"') else ""} \
      ~{if (like_old) then "-likeold" else ""} \
      ~{if (fragmentary) then "-fragmentary" else ""} \
      ~{if (amaa) then "-amaa" else ""} \
      ~{if (use_old_cm_finder) then "-useOldCmfinder" else ""} \
      ~{if (skip_clustalw) then "-skipClustalw" else ""} \
      ~{if (just_get_cm_finder_command) then "-justGetCmfinderCommand" else ""} \
      ~{if defined(copy_cm_finder_runs_from_log) then ("-copyCmfinderRunsFromLog " +  '"' + copy_cm_finder_runs_from_log + '"') else ""} \
      ~{if defined(comma_sep_em_flags) then ("-commaSepEmFlags " +  '"' + comma_sep_em_flags + '"') else ""} \
      ~{if defined(comma_sep_summarize_flags) then ("-commaSepSummarizeFlags " +  '"' + comma_sep_summarize_flags + '"') else ""} \
      ~{if defined(commas_epc_and_fflags) then ("-commaSepCandfFlags " +  '"' + commas_epc_and_fflags + '"') else ""} \
      ~{if defined(minc_and_score_in_final) then ("-minCandScoreInFinal " +  '"' + minc_and_score_in_final + '"') else ""} \
      ~{if (filter_non_frag) then "-filterNonFrag" else ""} \
      ~{if (column_only_base_pair_probs) then "-columnOnlyBasePairProbs" else ""} \
      ~{if defined(save_timer) then ("-saveTimer " +  '"' + save_timer + '"') else ""} \
      ~{if defined(cpu) then ("-cpu " +  '"' + cpu + '"') else ""} \
      ~{if (all_cpus) then "-allCpus" else ""} \
      ~{if (can_ds_parallel) then "-candsParallel" else ""} \
      ~{if defined(outfile_suffix) then ("-outFileSuffix " +  '"' + outfile_suffix + '"') else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    maximum_number_default: "The maximum number of candidates in each sequence. Default 40. No bigger than 100."
    minimum_length_candidates: "The minimum length of candidates. Default 30"
    maximum_length_candidates: "The maximum length of candidates. Default 100"
    fraction_sequences_expected: "The fraction of the sequences expected to contain the motif. Default 0.80"
    s_one: "The max number of output single stem-loop motifs"
    s_two: "The max number of output double stem-loop motifs"
    min_span_one: "minimum span of a candidate sub-sequence in the heuristics to come up with an initial alignment for single-hairpin (h1) motifs"
    max_span_one: "like -minspan1, but maximum"
    min_span_two: "like -minspan1, but for double-hairpin (h2) motifs"
    max_span_two: "like -minspan2, but maximal"
    combine: "Combine the output motifs. Default False"
    motif_list: "Produce a list of motifs generated, one motif per line."
    minimum_overlap_combining: "Minimum overlap for combining motifs"
    minimum_number_sequences: "Minimum number of sequences (weighted) for combining motifs"
    em_seq: "Use the sequences in this fasta file for the expectation maximization step (i.e., the C executable cmfinder), but not for the earlier steps related to finding candidate motifs.  The reason for this distinction is that it is somewhat easier to add weighting to the cmfinder program, than the various canda, candf, cands and align programs."
    like_old: "Behave as much as possible like the old CMfinder, e.g., passing --enone, --p56 and --degen-rand to cmfinder_inf11.  It's not possible to produce identical results to CMfinder 0.3, but these flags make it more similar."
    fragmentary: "Pass --fragmentary for cmfinder"
    amaa: "Pass --amaa to cmfinder (align max align accuracy)"
    use_old_cm_finder: "Run the old cmfinder executable, mainly to test whether we get different results because of this perl script, or the cmfinder_inf11 executable."
    skip_clustalw: "Do not run clustalw, like older installations lacking this program."
    just_get_cm_finder_command: "Print the command to run for the cmfinder executable, with appropriate partial flags.  This can be used to realign an existing .sto file, for example."
    copy_cm_finder_runs_from_log: "For debugging.  Reads a log file that contains cmfinder commands, and re-runs them with new CMfinder."
    comma_sep_em_flags: "<flags>\\nList of flags and arguments to pass to the EM-step cmfinder exe.  There's an 'x' at the beginning of the flags, so that perl doesn't interpret the flags as flags for it.  It's comma-separated where on the command line it would be space separated.  I think commas are safe, and mean that I don't have to worry about quoting stuff.  e.g., -commaSepEmFlags x--fragmentary,--filter-non-frag,--filter-non-frag-pad,10 would pass this to the cmfinder program: \\\"--fragmentary --filter-non-frag --filter-non-frag-pad 10\\\", i.e., just replace commas with spaces."
    comma_sep_summarize_flags: "<flags>\\nFlags to pass to the --summarize command.  Same syntax as for --commaSepEmFlags"
    commas_epc_and_fflags: "<flags>\\nFlags to pass to the candf command.  Same syntax as for --commaSepEmFlags"
    minc_and_score_in_final: "Pass --min-cand-score-in-final <number> to cmfinder.  WARNING: there's a difference between using this flag (where even intermediate motifs will avoid these hits) and taking the low-scoring instances out of the final alignments (which might be combinations of motifs in which the sequence would have been lower-scoring)."
    filter_non_frag: "Pass --filter-non-frag to cmfinder"
    column_only_base_pair_probs: "Pass --column-only-base-pair-probs to cmfinder"
    save_timer: "create tab-delimited <file> containing timing stats on various sub-processes of this script.  the first tab-delimited field is the description of the sub-process, the second field is the total CPU time (user+sys) and the third field is the wall-clock time.  Sub-processes can occur in multiple lines if they are run multiple timers, so the caller should add them.  Due to my laziness, the time of the clustalw program (if used) is not counted."
    cpu: "use <num> CPUs for functionality that can use multi-CPUs (currently only the internal cmsearch commands in cmfinder04)"
    all_cpus: "equivalent to -cpu X , where X is the number of available processors."
    can_ds_parallel: "run the two cands jobs in parallel, even if -cpu 1"
    outfile_suffix: "add <string> to the output file names.  this is useful if you want to run the script in multiple ways in the same directory."
    version: "Show package version\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outfile_suffix = "${in_outfile_suffix}"
  }
}