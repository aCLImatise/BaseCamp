version 1.0

task QacToQa {
  input {
    String nameName
  }
  command <<<
    qacToQa \
      ~{if defined(nameName) then ("-name " +  '"' + nameName + '"') else ""}
  >>>
}