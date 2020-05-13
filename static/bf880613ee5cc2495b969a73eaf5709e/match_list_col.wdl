version 1.0

task MatchListCol.awkCol {
  input {
    String? listListFile
    String? colCol
  }
  command <<<
    match-list-col.awk col \
      ~{listListFile} \
      ~{colCol}
  >>>
}