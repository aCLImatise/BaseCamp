version 1.0

task _msbar {
  input {
    Boolean countCount
    Boolean pointPoint
    Boolean blockBlock
  }
  command <<<
    _msbar \
      ~{true="-count" false="" countCount} \
      ~{true="-point" false="" pointPoint} \
      ~{true="-block" false="" blockBlock}
  >>>
}