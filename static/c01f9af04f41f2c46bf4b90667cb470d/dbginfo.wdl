version 1.0

task Dbginfo {
  input {
    Boolean? in
  }
  command <<<
    dbginfo \
      ~{true="-in" false="" in}
  >>>
  parameter_meta {
    in: "(1 arg) :    graph file"
  }
}