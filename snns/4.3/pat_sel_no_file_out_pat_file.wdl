version 1.0

task PatSelNoFileOutPatFile {
  input {
    String? inInPatFile
    String? outOutPatFile
  }
  command <<<
    pat_sel no_file out_pat_file \
      ~{inInPatFile} \
      ~{outOutPatFile}
  >>>
}