version 1.0

task GfapyConvert {
  input {
    File filename
  }
  command <<<
    gfapy-convert \
      ~{filename}
  >>>
  parameter_meta {
    filename: ""
  }
}