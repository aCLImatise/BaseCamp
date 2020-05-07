version 1.0

task PatSelInPatFile {
  input {
    String? noNoFile
    String? inInPatFile
    String? outOutPatFile
  }
  command <<<
    pat_sel in_pat_file \
      ~{noNoFile} \
      ~{inInPatFile} \
      ~{outOutPatFile}
  >>>
}