version 1.0

task MbAnnotateTable {
  input {
    String? parParClipTable
    String? outputOutputDir
    String? gff3Gff3AnNot
  }
  command <<<
    mb-annotate-table \
      ~{parParClipTable} \
      ~{outputOutputDir} \
      ~{gff3Gff3AnNot}
  >>>
}