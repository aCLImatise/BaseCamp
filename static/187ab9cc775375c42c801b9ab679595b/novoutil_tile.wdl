version 1.0

task NovoutilTile {
  input {
    Boolean lL
  }
  command <<<
    novoutil tile \
      ~{true="-l" false="" lL}
  >>>
}