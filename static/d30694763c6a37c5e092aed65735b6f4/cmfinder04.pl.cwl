class: CommandLineTool
id: cmfinder04.pl.cwl
inputs:
- id: in_maximum_number_default
  doc: The maximum number of candidates in each sequence. Default 40. No bigger than
    100.
  type: long?
  inputBinding:
    prefix: -c
- id: in_minimum_length_default
  doc: The minimum length of candidates. Default 30
  type: long?
  inputBinding:
    prefix: -m
- id: in_maximum_length_default
  doc: The maximum length of candidates. Default 100
  type: long?
  inputBinding:
    prefix: -M
- id: in_fraction_sequences_expected
  doc: The fraction of the sequences expected to contain the motif. Default 0.80
  type: long?
  inputBinding:
    prefix: -f
- id: in_s_one
  doc: The max number of output single stem-loop motifs
  type: long?
  inputBinding:
    prefix: -s1
- id: in_s_two
  doc: The max number of output double stem-loop motifs
  type: long?
  inputBinding:
    prefix: -s2
- id: in_min_span_one
  doc: minimum span of a candidate sub-sequence in the heuristics to come up with
    an initial alignment for single-hairpin (h1) motifs
  type: long?
  inputBinding:
    prefix: -minspan1
- id: in_max_span_one
  doc: like -minspan1, but maximum
  type: long?
  inputBinding:
    prefix: -maxspan1
- id: in_min_span_two
  doc: like -minspan1, but for double-hairpin (h2) motifs
  type: long?
  inputBinding:
    prefix: -minspan2
- id: in_max_span_two
  doc: like -minspan2, but maximal
  type: long?
  inputBinding:
    prefix: -maxspan2
- id: in_combine
  doc: Combine the output motifs. Default False
  type: boolean?
  inputBinding:
    prefix: -combine
- id: in_motif_list
  doc: Produce a list of motifs generated, one motif per line.
  type: File?
  inputBinding:
    prefix: -motifList
- id: in_minimum_overlap_combining
  doc: Minimum overlap for combining motifs
  type: long?
  inputBinding:
    prefix: -o
- id: in_minimum_number_sequences
  doc: Minimum number of sequences (weighted) for combining motifs
  type: long?
  inputBinding:
    prefix: -n
- id: in_em_seq
  doc: Use the sequences in this fasta file for the expectation maximization step
    (i.e., the C executable cmfinder), but not for the earlier steps related to finding
    candidate motifs.  The reason for this distinction is that it is somewhat easier
    to add weighting to the cmfinder program, than the various canda, candf, cands
    and align programs.
  type: File?
  inputBinding:
    prefix: -emSeq
- id: in_like_old
  doc: Behave as much as possible like the old CMfinder, e.g., passing --enone, --p56
    and --degen-rand to cmfinder_inf11.  It's not possible to produce identical results
    to CMfinder 0.3, but these flags make it more similar.
  type: boolean?
  inputBinding:
    prefix: -likeold
- id: in_fragmentary
  doc: Pass --fragmentary for cmfinder
  type: boolean?
  inputBinding:
    prefix: -fragmentary
- id: in_amaa
  doc: Pass --amaa to cmfinder (align max align accuracy)
  type: boolean?
  inputBinding:
    prefix: -amaa
- id: in_use_old_cm_finder
  doc: Run the old cmfinder executable, mainly to test whether we get different results
    because of this perl script, or the cmfinder_inf11 executable.
  type: boolean?
  inputBinding:
    prefix: -useOldCmfinder
- id: in_skip_clustalw
  doc: Do not run clustalw, like older installations lacking this program.
  type: boolean?
  inputBinding:
    prefix: -skipClustalw
- id: in_just_get_cm_finder_command
  doc: Print the command to run for the cmfinder executable, with appropriate partial
    flags.  This can be used to realign an existing .sto file, for example.
  type: boolean?
  inputBinding:
    prefix: -justGetCmfinderCommand
- id: in_copy_cm_finder_runs_from_log
  doc: For debugging.  Reads a log file that contains cmfinder commands, and re-runs
    them with new CMfinder.
  type: File?
  inputBinding:
    prefix: -copyCmfinderRunsFromLog
- id: in_comma_sep_em_flags
  doc: "<flags>\nList of flags and arguments to pass to the EM-step cmfinder exe.\
    \  There's an 'x' at the beginning of the flags, so that perl doesn't interpret\
    \ the flags as flags for it.  It's comma-separated where on the command line it\
    \ would be space separated.  I think commas are safe, and mean that I don't have\
    \ to worry about quoting stuff.  e.g., -commaSepEmFlags x--fragmentary,--filter-non-frag,--filter-non-frag-pad,10\
    \ would pass this to the cmfinder program: \"--fragmentary --filter-non-frag --filter-non-frag-pad\
    \ 10\", i.e., just replace commas with spaces."
  type: long?
  inputBinding:
    prefix: -commaSepEmFlags
- id: in_comma_sep_summarize_flags
  doc: "<flags>\nFlags to pass to the --summarize command.  Same syntax as for --commaSepEmFlags"
  type: string?
  inputBinding:
    prefix: -commaSepSummarizeFlags
- id: in_commas_epc_and_fflags
  doc: "<flags>\nFlags to pass to the candf command.  Same syntax as for --commaSepEmFlags"
  type: string?
  inputBinding:
    prefix: -commaSepCandfFlags
- id: in_minc_and_score_in_final
  doc: "Pass --min-cand-score-in-final <number> to cmfinder.  WARNING: there's a difference\
    \ between using this flag (where even intermediate motifs will avoid these hits)\
    \ and taking the low-scoring instances out of the final alignments (which might\
    \ be combinations of motifs in which the sequence would have been lower-scoring)."
  type: long?
  inputBinding:
    prefix: -minCandScoreInFinal
- id: in_filter_non_frag
  doc: Pass --filter-non-frag to cmfinder
  type: boolean?
  inputBinding:
    prefix: -filterNonFrag
- id: in_column_only_base_pair_probs
  doc: Pass --column-only-base-pair-probs to cmfinder
  type: boolean?
  inputBinding:
    prefix: -columnOnlyBasePairProbs
- id: in_save_timer
  doc: create tab-delimited <file> containing timing stats on various sub-processes
    of this script.  the first tab-delimited field is the description of the sub-process,
    the second field is the total CPU time (user+sys) and the third field is the wall-clock
    time.  Sub-processes can occur in multiple lines if they are run multiple timers,
    so the caller should add them.  Due to my laziness, the time of the clustalw program
    (if used) is not counted.
  type: File?
  inputBinding:
    prefix: -saveTimer
- id: in_cpu
  doc: use <num> CPUs for functionality that can use multi-CPUs (currently only the
    internal cmsearch commands in cmfinder04)
  type: long?
  inputBinding:
    prefix: -cpu
- id: in_all_cpus
  doc: equivalent to -cpu X , where X is the number of available processors.
  type: boolean?
  inputBinding:
    prefix: -allCpus
- id: in_can_ds_parallel
  doc: run the two cands jobs in parallel, even if -cpu 1
  type: boolean?
  inputBinding:
    prefix: -candsParallel
- id: in_outfile_suffix
  doc: add <string> to the output file names.  this is useful if you want to run the
    script in multiple ways in the same directory.
  type: File?
  inputBinding:
    prefix: -outFileSuffix
- id: in_version
  doc: "Show package version\n"
  type: boolean?
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile_suffix
  doc: add <string> to the output file names.  this is useful if you want to run the
    script in multiple ways in the same directory.
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile_suffix)
hints: []
cwlVersion: v1.1
baseCommand:
- cmfinder04.pl
