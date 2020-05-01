version 1.0

task GetGenomeTilingPeaks {
  input {
    String dD
    Boolean resRes
  }
  command <<<
    getGenomeTilingPeaks \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-res" false="" resRes}
  >>>
}