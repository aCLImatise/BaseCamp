version 1.0

task MinimapLiteTarget.fa {
  input {
    String? queryQueryFa
  }
  command <<<
    minimap-lite target.fa \
      ~{queryQueryFa}
  >>>
}