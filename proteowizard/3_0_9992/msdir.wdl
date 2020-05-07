version 1.0

task Msdir {
  input {
    Boolean bB
    Boolean dD
    Boolean fF
    String? typeType
  }
  command <<<
    msdir \
      ~{typeType} \
      ~{true="-b" false="" bB} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF}
  >>>
}