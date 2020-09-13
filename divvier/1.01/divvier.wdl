version 1.0

task Divvier {
  input {
    Boolean? divvy
    Boolean? partial
    Float? thresh
    Int? approx
    Boolean? check_splits
    Boolean? hmm_approx
    Boolean? hmm_exact
    Int? min_col
    Boolean? divvy_gap
  }
  command <<<
    divvier \
      ~{if (divvy) then "-divvy" else ""} \
      ~{if (partial) then "-partial" else ""} \
      ~{if defined(thresh) then ("-thresh " +  '"' + thresh + '"') else ""} \
      ~{if defined(approx) then ("-approx " +  '"' + approx + '"') else ""} \
      ~{if (check_splits) then "-checksplits" else ""} \
      ~{if (hmm_approx) then "-HMMapprox" else ""} \
      ~{if (hmm_exact) then "-HMMexact" else ""} \
      ~{if defined(min_col) then ("-mincol " +  '"' + min_col + '"') else ""} \
      ~{if (divvy_gap) then "-divvygap" else ""}
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
  output {
    File out_stdout = stdout()
  }
}