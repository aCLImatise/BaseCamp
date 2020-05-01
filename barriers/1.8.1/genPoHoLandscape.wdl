version 1.0

task GenPoHoLandscape {
  input {
    Boolean nanNan
  }
  command <<<
    genPoHoLandscape \
      ~{true="-nan" false="" nanNan}
  >>>
}