version 1.0

task AnnotateGapfile {
  input {
    String? dataDataFile
  }
  command <<<
    annotate gapfile \
      ~{dataDataFile}
  >>>
}