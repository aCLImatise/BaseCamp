version 1.0

task Svdb {
  input {
    Boolean buildBuild
    Boolean queryQuery
    Boolean mergeMerge
    Boolean exportExport
  }
  command <<<
    svdb \
      ~{true="--build" false="" buildBuild} \
      ~{true="--query" false="" queryQuery} \
      ~{true="--merge" false="" mergeMerge} \
      ~{true="--export" false="" exportExport}
  >>>
}