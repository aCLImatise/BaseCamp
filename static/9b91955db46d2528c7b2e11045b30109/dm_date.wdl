version 1.0

task DmDate {
  input {
    Boolean rR
    Boolean uU
  }
  command <<<
    dm_date \
      ~{true="-R" false="" rR} \
      ~{true="-u" false="" uU}
  >>>
}