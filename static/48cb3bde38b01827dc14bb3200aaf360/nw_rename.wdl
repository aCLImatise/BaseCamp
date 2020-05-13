version 1.0

task NwRename {
  input {
    Boolean lL
  }
  command <<<
    nw_rename \
      ~{true="-l" false="" lL}
  >>>
}