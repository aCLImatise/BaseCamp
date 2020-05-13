version 1.0

task MagpurifyCleanBinOutFna {
  input {
    String? fnaFna
    String? outOut
    String? outOutFna
  }
  command <<<
    magpurify clean-bin out_fna \
      ~{fnaFna} \
      ~{outOut} \
      ~{outOutFna}
  >>>
}