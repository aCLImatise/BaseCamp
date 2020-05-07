version 1.0

task Blossom5 {
  input {
    String? seeSee
    String? usageUsageTxt
  }
  command <<<
    blossom5 \
      ~{seeSee} \
      ~{usageUsageTxt}
  >>>
}