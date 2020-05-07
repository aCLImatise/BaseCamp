version 1.0

task PretextMap.sse42 {
  input {
    Boolean sortSortOrder
    Boolean mapqMapq
    Boolean filterFilterInclude
    Boolean filterFilterExclude
  }
  command <<<
    PretextMap.sse42 \
      ~{true="--sortorder" false="" sortSortOrder} \
      ~{true="--mapq" false="" mapqMapq} \
      ~{true="--filterInclude" false="" filterFilterInclude} \
      ~{true="--filterExclude" false="" filterFilterExclude}
  >>>
}