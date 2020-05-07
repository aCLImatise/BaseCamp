version 1.0

task Msbar {
  input {
    Boolean countCount
    Boolean pointPoint
    Boolean blockBlock
  }
  command <<<
    msbar \
      ~{true="-count" false="" countCount} \
      ~{true="-point" false="" pointPoint} \
      ~{true="-block" false="" blockBlock}
  >>>
}