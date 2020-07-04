version 1.0

task ParaFetch {
  input {
    Boolean? newer
    Boolean? progress
    String n
    String r
    String url
  }
  command <<<
    paraFetch \
      ~{n} \
      ~{r} \
      ~{url} \
      ~{true="-newer" false="" newer} \
      ~{true="-progress" false="" progress}
  >>>
  parameter_meta {
    newer: "only download a file if it is newer than the version we already have."
    progress: "Show progress of download."
    n: ""
    r: ""
    url: ""
  }
}