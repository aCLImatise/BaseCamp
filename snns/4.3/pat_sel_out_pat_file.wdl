version 1.0

task PatSelOutPatFile {
  input {
    String? noNoFile
    String? inInPatFile
    String? outOutPatFile
  }
  command <<<
    pat_sel out_pat_file \
      ~{noNoFile} \
      ~{inInPatFile} \
      ~{outOutPatFile}
  >>>
}