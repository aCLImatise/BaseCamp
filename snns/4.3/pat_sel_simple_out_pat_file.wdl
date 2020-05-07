version 1.0

task PatSelSimpleOutPatFile {
  input {
    String? noNoFile
    String? inInPatFile
    String? outOutPatFile
  }
  command <<<
    pat_sel_simple out_pat_file \
      ~{noNoFile} \
      ~{inInPatFile} \
      ~{outOutPatFile}
  >>>
}