version 1.0

task Meryl {
  input {
    String? unionUnion
  }
  command <<<
    meryl \
      ~{unionUnion}
  >>>
}