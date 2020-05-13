version 1.0

task SamStatsFile1 {
  input {
    File? fileFile2filen
  }
  command <<<
    sam-stats file1 \
      ~{fileFile2filen}
  >>>
}