version 1.0

task PretextMap.sse42 {
  input {
    Boolean? filter_include
    Boolean? filter_exclude
  }
  command <<<
    PretextMap.sse42 \
      ~{true="--filterInclude" false="" filter_include} \
      ~{true="--filterExclude" false="" filter_exclude}
  >>>
  parameter_meta {
    filter_include: "\"seq_ [, seq_]*\""
    filter_exclude: "\"seq_ [, seq_]*\")"
  }
}