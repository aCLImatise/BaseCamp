version 1.0

task MagpurifyCleanBinOut {
  input {
    String? fnaFna
    String? outOut
    String? outOutFna
  }
  command <<<
    magpurify clean-bin out \
      ~{fnaFna} \
      ~{outOut} \
      ~{outOutFna}
  >>>
}