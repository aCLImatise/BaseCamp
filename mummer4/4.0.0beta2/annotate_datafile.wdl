version 1.0

task AnnotateDatafile {
  input {
    String? gapGapFile
    String? dataDataFile
  }
  command <<<
    annotate datafile \
      ~{gapGapFile} \
      ~{dataDataFile}
  >>>
}