version 1.0

task SplitFile {
  input {
    File headHead
    File tailTail
    String? sourceSource
    String? linesLinesPerFile
    String? outOutBasename
  }
  command <<<
    splitFile \
      ~{sourceSource} \
      ~{if defined(headHead) then ("-head " +  '"' + headHead + '"') else ""} \
      ~{if defined(tailTail) then ("-tail " +  '"' + tailTail + '"') else ""} \
      ~{linesLinesPerFile} \
      ~{outOutBasename}
  >>>
}