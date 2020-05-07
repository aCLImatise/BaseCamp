version 1.0

task DepCheck {
  input {
    Boolean qQ
    Boolean skipSkipLock
    Boolean skipSkipVendor
  }
  command <<<
    dep check \
      ~{true="-q" false="" qQ} \
      ~{true="-skip-lock" false="" skipSkipLock} \
      ~{true="-skip-vendor" false="" skipSkipVendor}
  >>>
}