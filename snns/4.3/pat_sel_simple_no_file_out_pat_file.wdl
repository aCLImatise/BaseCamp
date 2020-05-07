version 1.0

task PatSelSimpleNoFileOutPatFile {
  input {
    String? inInPatFile
    String? outOutPatFile
  }
  command <<<
    pat_sel_simple no_file out_pat_file \
      ~{inInPatFile} \
      ~{outOutPatFile}
  >>>
}