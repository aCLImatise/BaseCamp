version 1.0

task Checktrans {
  input {
    Boolean orOrFml
  }
  command <<<
    checktrans \
      ~{true="-orfml" false="" orOrFml}
  >>>
}