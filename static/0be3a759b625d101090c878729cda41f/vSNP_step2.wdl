version 1.0

task VSNPStep2.py {
  input {
    String referenceReference
    Boolean tableTable
    Boolean allAll
    Boolean subsetSubset
    Boolean debugDebug
    Boolean noNoFilters
    Boolean filterFilterFinder
    String cwdCwd
    String gbkGbk
  }
  command <<<
    vSNP_step2.py \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--table" false="" tableTable} \
      ~{true="--all" false="" allAll} \
      ~{true="--subset" false="" subsetSubset} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--no_filters" false="" noNoFilters} \
      ~{true="--filter_finder" false="" filterFilterFinder} \
      ~{if defined(cwdCwd) then ("--cwd " +  '"' + cwdCwd + '"') else ""} \
      ~{if defined(gbkGbk) then ("--gbk " +  '"' + gbkGbk + '"') else ""}
  >>>
}