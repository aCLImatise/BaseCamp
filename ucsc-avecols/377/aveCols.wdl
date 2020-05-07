version 1.0

task AveCols {
  input {
    File? fileFile
  }
  command <<<
    aveCols \
      ~{fileFile}
  >>>
}