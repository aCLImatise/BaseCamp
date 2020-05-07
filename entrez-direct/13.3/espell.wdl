version 1.0

task Espell {
  input {
    Boolean dbDb
    Boolean queryQuery
  }
  command <<<
    espell \
      ~{true="-db" false="" dbDb} \
      ~{true="-query" false="" queryQuery}
  >>>
}