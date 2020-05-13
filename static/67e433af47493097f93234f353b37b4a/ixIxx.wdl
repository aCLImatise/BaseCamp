version 1.0

task IxIxx {
  input {
    String prefixPrefixSize
    String binsizeBinsize
    String? inInText
    String? outOutIx
    String? outOutIxX
  }
  command <<<
    ixIxx \
      ~{inInText} \
      ~{if defined(prefixPrefixSize) then ("-prefixSize " +  '"' + prefixPrefixSize + '"') else ""} \
      ~{if defined(binsizeBinsize) then ("-binSize " +  '"' + binsizeBinsize + '"') else ""} \
      ~{outOutIx} \
      ~{outOutIxX}
  >>>
}