version 1.0

task _checktrans {
  input {
    Boolean orOrFml
  }
  command <<<
    _checktrans \
      ~{true="-orfml" false="" orOrFml}
  >>>
}