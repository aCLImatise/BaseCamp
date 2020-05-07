version 1.0

task QacToWig {
  input {
    String nameName
    Boolean fixedFixed
  }
  command <<<
    qacToWig \
      ~{if defined(nameName) then ("-name " +  '"' + nameName + '"') else ""} \
      ~{true="-fixed" false="" fixedFixed}
  >>>
}