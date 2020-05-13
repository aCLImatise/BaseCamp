version 1.0

task HcaMatrixDownloader {
  input {
    String projectProject
    String queryQuery
    String formatFormat
    String outOutPrefix
  }
  command <<<
    hca-matrix-downloader \
      ~{if defined(projectProject) then ("--project " +  '"' + projectProject + '"') else ""} \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(outOutPrefix) then ("--outprefix " +  '"' + outOutPrefix + '"') else ""}
  >>>
}