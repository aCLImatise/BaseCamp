version 1.0

task DeterminePhred {
  input {
    File? fileFile
  }
  command <<<
    determine-phred \
      ~{fileFile}
  >>>
}