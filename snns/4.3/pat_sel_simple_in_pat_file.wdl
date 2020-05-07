version 1.0

task PatSelSimpleInPatFile {
  input {
    String? noNoFile
    String? inInPatFile
    String? outOutPatFile
  }
  command <<<
    pat_sel_simple in_pat_file \
      ~{noNoFile} \
      ~{inInPatFile} \
      ~{outOutPatFile}
  >>>
}