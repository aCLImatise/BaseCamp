version 1.0

task Mergesam.sh {
  input {
    File files
    String out
  }
  command <<<
    mergesam.sh \
      ~{files} \
      ~{out}
  >>>
  parameter_meta {
    files: ""
    out: ""
  }
}