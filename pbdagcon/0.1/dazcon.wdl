version 1.0

task Dazcon {
  input {
    String? dazDazCon
  }
  command <<<
    dazcon \
      ~{dazDazCon}
  >>>
}