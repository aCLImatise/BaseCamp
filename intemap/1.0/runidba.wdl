version 1.0

task Runidba.pyOutputpathdir {
  input {
    String? paraParaFile
    String? readfileReadfile
    String? outputOutputPathDir
  }
  command <<<
    runidba.py outputpathdir \
      ~{paraParaFile} \
      ~{readfileReadfile} \
      ~{outputOutputPathDir}
  >>>
}