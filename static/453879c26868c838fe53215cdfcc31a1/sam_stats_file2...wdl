version 1.0

task SamStatsFile2...filen {
  input {
    File? fileFile1
    File? fileFile2filen
  }
  command <<<
    sam-stats file2...filen \
      ~{fileFile1} \
      ~{fileFile2filen}
  >>>
}