version 1.0

task Mkvtree {
  input {
    String? indexIndexName
  }
  command <<<
    mkvtree \
      ~{indexIndexName}
  >>>
}