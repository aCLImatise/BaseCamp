version 1.0

task Edialign {
  input {
    Boolean? overlap_w
    Boolean? linkage
    Boolean? max_frag_l
    Boolean? its_core
    Boolean? threshold
    Boolean? mask
    Boolean? do_stars
    String numbers
  }
  command <<<
    edialign \
      ~{numbers} \
      ~{if (overlap_w) then "-overlapw" else ""} \
      ~{if (linkage) then "-linkage" else ""} \
      ~{if (max_frag_l) then "-maxfragl" else ""} \
      ~{if (its_core) then "-itscore" else ""} \
      ~{if (threshold) then "-threshold" else ""} \
      ~{if (mask) then "-mask" else ""} \
      ~{if (do_stars) then "-dostars" else ""}
  >>>
  parameter_meta {
    overlap_w: "selection  [default (when Nseq =< 35)] By default\\noverlap weights are used when Nseq =<35 but\\nyou can set this to 'yes' or 'no'"
    linkage: "menu       [UPGMA] Clustering method to construct\\nsequence tree (UPGMA, minimum linkage or\\nmaximum linkage) (Values: UPGMA (UPGMA); max\\n(maximum linkage); min (minimum linkage))"
    max_frag_l: "integer    [40] Maximum fragment length (Integer 0 or\\nmore)"
    its_core: "boolean    [N] Use iterative score"
    threshold: "float      [0.0] Threshold for considering diagonal for\\nalignment (Number 0.000 or more)"
    mask: "boolean    [N] Replace unaligned characters by stars\\n'*' rather then putting them in lowercase"
    do_stars: "boolean    [N] Activate writing of stars instead of"
    numbers: "-starnum            integer    [4] Put up to n stars '*' instead of digits"
  }
  output {
    File out_stdout = stdout()
  }
}