version 1.0

task ChainSort {
  input {
    String targetTarget
    String queryQuery
    String indexIndex
    String? inInFile
    String? outfileOutfile
  }
  command <<<
    chainSort \
      ~{inInFile} \
      ~{if defined(targetTarget) then ("-target " +  '"' + targetTarget + '"') else ""} \
      ~{if defined(queryQuery) then ("-query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(indexIndex) then ("-index " +  '"' + indexIndex + '"') else ""} \
      ~{outfileOutfile}
  >>>
}