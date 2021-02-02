version 1.0

task TOBIASScoreBed {
  input {
    String? math
    Boolean? bed
    Boolean? bigwigs
    File? path_output_sites
    Boolean? subset
    Boolean? null
    Boolean? position
    Int? verbosity
  }
  command <<<
    TOBIAS ScoreBed \
      ~{if defined(math) then ("--math " +  '"' + math + '"') else ""} \
      ~{if (bed) then "--bed" else ""} \
      ~{if (bigwigs) then "--bigwigs" else ""} \
      ~{if (path_output_sites) then "--output" else ""} \
      ~{if (subset) then "--subset" else ""} \
      ~{if (null) then "--null" else ""} \
      ~{if (position) then "--position" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    math: "be used to adjust scoring scheme."
    bed: "Sites to score (.bed file)"
    bigwigs: "[ [ ...]]  Scores to assign to regions in .bed (.bw file(s))"
    path_output_sites: "Path to output .bed-file (default: scored sites are written to\\nstdout)"
    subset: "Subset scoring to .bed regions and set all other sites to --null\\nvalue (default: all sites in input file will be scored)"
    null: "If --subset is given, which score/label to add to non-scored\\nregions (default: 0)"
    position: "Position in sites to score (start/mid/end/full) (default: full)"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3:\\nstats, 4: debug, 5: spam) (default: 3)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_sites = "${in_path_output_sites}"
  }
}