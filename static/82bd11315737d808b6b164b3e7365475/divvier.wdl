version 1.0

task Divvier {
  input {
    Boolean? divvy
    Boolean? partial
    String? thresh
    String? approx
    Boolean? check_splits
    Boolean? hmm_approx
    Boolean? hmm_exact
    String? min_col
    Boolean? divvy_gap
  }
  command <<<
    divvier \
      ~{true="-divvy" false="" divvy} \
      ~{true="-partial" false="" partial} \
      ~{if defined(thresh) then ("-thresh " +  '"' + thresh + '"') else ""} \
      ~{if defined(approx) then ("-approx " +  '"' + approx + '"') else ""} \
      ~{true="-checksplits" false="" check_splits} \
      ~{true="-HMMapprox" false="" hmm_approx} \
      ~{true="-HMMexact" false="" hmm_exact} \
      ~{if defined(min_col) then ("-mincol " +  '"' + min_col + '"') else ""} \
      ~{true="-divvygap" false="" divvy_gap}
  >>>
  parameter_meta {
    divvy: ": do standard divvying (DEFAULT)"
    partial: ": do partial filtering by testing removal of individual characters"
    thresh: ": set the threshold for divvying to X (DEFAULT divvying = 0.801; partial = 0.774)"
    approx: ": minimum number of characters tested in a split during divvying (DEFAULT X = 10)"
    check_splits: ": go through sequence and ensure there's a pair for every split. Can be slow"
    hmm_approx: ": Do the pairHMM bounding approximation (DEFAULT)"
    hmm_exact: ": Do the full pairHMM and ignore bounding"
    min_col: ": Minimum number of characters in a column to output when divvying/filtering (DEFAULT X = 2)"
    divvy_gap: ": Output a gap instead of the static * character so divvied MSAs can be used in phylogeny program"
  }
}