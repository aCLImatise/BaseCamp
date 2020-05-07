version 1.0

task MinimapLiteQuery.fa {
  input {
    String? targetTargetFa
    String? queryQueryFa
  }
  command <<<
    minimap-lite query.fa \
      ~{targetTargetFa} \
      ~{queryQueryFa}
  >>>
}