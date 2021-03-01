version 1.0

task Cgatreportget {
  input {
    Int? verbose
    Boolean? view
    String? tracker
    String? tracks
    String? slices
    String? group_by
    String? format
    String python
  }
  command <<<
    cgatreport_get \
      ~{python} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (view) then "--view" else ""} \
      ~{if defined(tracker) then ("--tracker " +  '"' + tracker + '"') else ""} \
      ~{if defined(tracks) then ("--tracks " +  '"' + tracks + '"') else ""} \
      ~{if defined(slices) then ("--slices " +  '"' + slices + '"') else ""} \
      ~{if defined(group_by) then ("--groupby " +  '"' + group_by + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "loglevel. The higher, the more output [default=2]"
    view: "view keys in cache [default=False]"
    tracker: "tracker to use [default=none]"
    tracks: "tracks to include [default=none]"
    slices: "slices to include [default=none]"
    group_by: "groupby by track or slice [default=slice]"
    format: "output format [default=tsv]\\n"
    python: ""
  }
  output {
    File out_stdout = stdout()
  }
}