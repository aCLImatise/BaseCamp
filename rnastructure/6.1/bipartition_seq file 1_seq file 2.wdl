version 1.0

task BipartitionSeq file 1Seq file 2 {
  input {
    String? pfsPfsFile
  }
  command <<<
    bipartition seq file 1 seq file 2 \
      ~{pfsPfsFile}
  >>>
}