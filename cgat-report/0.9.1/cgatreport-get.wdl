version 1.0

task CgatreportGet {
  input {
    String verboseVerbose
    Boolean viewView
    String trackerTracker
    String tracksTracks
    String slicesSlices
    String groupGroupBy
    String formatFormat
  }
  command <<<
    cgatreport-get \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{true="--view" false="" viewView} \
      ~{if defined(trackerTracker) then ("--tracker " +  '"' + trackerTracker + '"') else ""} \
      ~{if defined(tracksTracks) then ("--tracks " +  '"' + tracksTracks + '"') else ""} \
      ~{if defined(slicesSlices) then ("--slices " +  '"' + slicesSlices + '"') else ""} \
      ~{if defined(groupGroupBy) then ("--groupby " +  '"' + groupGroupBy + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""}
  >>>
}