version 1.0

task TOBIASScoreBed {
  input {
    Boolean? bed
    Boolean? bigwigs
    Boolean? path_output_default
    Boolean? subset
    Boolean? null
    Boolean? position
    Boolean? math
    Int? verbosity
  }
  command <<<
    TOBIAS ScoreBed \
      ~{true="--bed" false="" bed} \
      ~{true="--bigwigs" false="" bigwigs} \
      ~{true="--output" false="" path_output_default} \
      ~{true="--subset" false="" subset} \
      ~{true="--null" false="" null} \
      ~{true="--position" false="" position} \
      ~{true="--math" false="" math} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    bed: "Sites to score (.bed file)"
    bigwigs: "[ [ ...]]  Scores to assign to regions in .bed (.bw file(s))"
    path_output_default: "Path to output .bed-file (default: scored sites are written to stdout)"
    subset: "Subset scoring to .bed regions and set all other sites to --null value (default: all sites in input file will be scored)"
    null: "If --subset is given, which score/label to add to non-scored regions (default: 0)"
    position: "Position in sites to score (start/mid/end/full) (default: full)"
    math: "If position == full, choose math to perform on signal (min/max/mean/sum) (default: mean)"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats, 4: debug, 5: spam) (default: 3)"
  }
}