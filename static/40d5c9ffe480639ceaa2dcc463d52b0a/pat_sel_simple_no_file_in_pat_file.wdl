version 1.0

task PatSelSimpleNoFileInPatFile {
  input {
    String? outOutPatFile
  }
  command <<<
    pat_sel_simple no_file in_pat_file \
      ~{outOutPatFile}
  >>>
}