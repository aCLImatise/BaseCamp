version 1.0

task FastqtofastaInfastqfile {
  input {
    String? outOutFastAFile
  }
  command <<<
    fastqtofasta infastqfile \
      ~{outOutFastAFile}
  >>>
}