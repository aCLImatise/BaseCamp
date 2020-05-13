version 1.0

task ProphylePairedEnd.pyReads1 {
  input {
    String outputOutputFile
    String? readsReads1
    String? readsReads2
  }
  command <<<
    prophyle_paired_end.py reads_1 \
      ~{readsReads1} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{readsReads2}
  >>>
}