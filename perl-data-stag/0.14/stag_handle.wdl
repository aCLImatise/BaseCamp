version 1.0

task StagHandle.pl {
  input {
    Boolean? sub
    Boolean? trap
  }
  command <<<
    stag-handle.pl \
      ~{true="-sub" false="" sub} \
      ~{true="-trap" false="" trap}
  >>>
  parameter_meta {
    sub: "|s PERL a perl hashref containing handlers"
    trap: "|t ELEMENT=SUB"
  }
}