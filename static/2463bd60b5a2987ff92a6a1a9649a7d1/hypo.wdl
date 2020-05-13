version 1.0

task Hypo {
  input {
    String? srSr
    String? ccsCcs
  }
  command <<<
    hypo \
      ~{srSr} \
      ~{ccsCcs}
  >>>
}