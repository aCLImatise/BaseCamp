version 1.0

task VsnpFilterFinder.py {
  input {
    String cwdCwd
    String filtersFilters
    String groupGroup
    Boolean debugDebug
  }
  command <<<
    vsnp_filter_finder.py \
      ~{if defined(cwdCwd) then ("--cwd " +  '"' + cwdCwd + '"') else ""} \
      ~{if defined(filtersFilters) then ("--filters " +  '"' + filtersFilters + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}