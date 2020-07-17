version 1.0

task HgLoadBed {
  input {
    File? tmpdir
    Boolean? no_name_ix
    Boolean? ignore_empty
    Boolean? no_strict
    Boolean? allow_start_equal_end
    Boolean? allow_negative_scores
    Boolean? custom_track_loader
    String? fill_in_score
    String? min_score
    String? verbose
    String? dot_is_null
    String? line_limit
    String database
    String track
    File files
  }
  command <<<
    hgLoadBed \
      ~{database} \
      ~{track} \
      ~{files} \
      ~{if defined(tmpdir) then ("-tmpDir " +  '"' + tmpdir + '"') else ""} \
      ~{true="-noNameIx" false="" no_name_ix} \
      ~{true="-ignoreEmpty" false="" ignore_empty} \
      ~{true="-noStrict" false="" no_strict} \
      ~{true="-allowStartEqualEnd" false="" allow_start_equal_end} \
      ~{true="-allowNegativeScores" false="" allow_negative_scores} \
      ~{true="-customTrackLoader" false="" custom_track_loader} \
      ~{if defined(fill_in_score) then ("-fillInScore " +  '"' + fill_in_score + '"') else ""} \
      ~{if defined(min_score) then ("-minScore " +  '"' + min_score + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(dot_is_null) then ("-dotIsNull " +  '"' + dot_is_null + '"') else ""} \
      ~{if defined(line_limit) then ("-lineLimit " +  '"' + line_limit + '"') else ""}
  >>>
  parameter_meta {
    tmpdir: "- path to directory for creation of temporary .tab file - which will be removed after loading"
    no_name_ix: "- no index for the name column (default creates index)"
    ignore_empty: "- no error on empty input file"
    no_strict: "- don't perform coord sanity checks - by default we abort when: chromStart >= chromEnd"
    allow_start_equal_end: "- even when doing strict checks, allow chromStart==chromEnd (zero-length e.g. insertion)"
    allow_negative_scores: "- sql definition of score column is int, not unsigned"
    custom_track_loader: "- turns on: -noNameIx, -noHistory, -ignoreEmpty, -allowStartEqualEnd, -allowNegativeScores, -verbose=0 Plus, this turns on a 20 minute time-out exit."
    fill_in_score: "- if every score value is zero, then use column 'colName' to fill in the score column (from minScore-1000)"
    min_score: "- minimum value for score field for -fillInScore option (default 100)"
    verbose: "- verbose level for extra information to STDERR"
    dot_is_null: "- if the specified field is a '.' the replace it with -1"
    line_limit: "- limit input file to this number of lines"
    database: ""
    track: ""
    files: ""
  }
}