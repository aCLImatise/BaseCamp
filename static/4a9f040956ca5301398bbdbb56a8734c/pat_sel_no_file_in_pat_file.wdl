version 1.0

task PatSelNoFileInPatFile {
  input {
    String? outOutPatFile
  }
  command <<<
    pat_sel no_file in_pat_file \
      ~{outOutPatFile}
  >>>
}