version 1.0

task Runcabog.py {
  input {
    String? paraParaFile
    String? readfileReadfile
    String? libraryLibraryInfoFile
  }
  command <<<
    runcabog.py \
      ~{paraParaFile} \
      ~{readfileReadfile} \
      ~{libraryLibraryInfoFile}
  >>>
}