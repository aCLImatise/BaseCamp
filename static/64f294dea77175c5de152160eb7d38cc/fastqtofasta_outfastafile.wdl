version 1.0

task FastqtofastaOutfastafile {
  input {
    String? inInFastQFile
    String? outOutFastAFile
  }
  command <<<
    fastqtofasta outfastafile \
      ~{inInFastQFile} \
      ~{outOutFastAFile}
  >>>
}