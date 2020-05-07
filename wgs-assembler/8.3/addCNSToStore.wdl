version 1.0

task AddCNSToStore {
  input {
    Boolean pathPath
    Boolean prefixPrefix
  }
  command <<<
    addCNSToStore \
      ~{true="-path" false="" pathPath} \
      ~{true="-prefix" false="" prefixPrefix}
  >>>
}