version 1.0

task SplitFileByColumn {
  input {
    Boolean tabTab
    String? sourceSource
    String? outdirOutdir
  }
  command <<<
    splitFileByColumn \
      ~{sourceSource} \
      ~{true="-tab" false="" tabTab} \
      ~{outdirOutdir}
  >>>
}