version 1.0

task DriveNew {
  input {
    String mimeMimeKey
  }
  command <<<
    drive new \
      ~{if defined(mimeMimeKey) then ("-mime-key " +  '"' + mimeMimeKey + '"') else ""}
  >>>
}