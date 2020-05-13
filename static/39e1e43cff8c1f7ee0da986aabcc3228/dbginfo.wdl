version 1.0

task Dbginfo {
  input {
    Boolean inIn
  }
  command <<<
    dbginfo \
      ~{true="-in" false="" inIn}
  >>>
}