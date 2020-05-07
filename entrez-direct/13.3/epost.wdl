version 1.0

task Epost {
  input {
    Boolean dbDb
    Boolean idId
    Boolean formatFormat
    Boolean inputInput
    Boolean labelLabel
  }
  command <<<
    epost \
      ~{true="-db" false="" dbDb} \
      ~{true="-id" false="" idId} \
      ~{true="-format" false="" formatFormat} \
      ~{true="-input" false="" inputInput} \
      ~{true="-label" false="" labelLabel}
  >>>
}