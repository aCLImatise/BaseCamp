version 1.0

task RgthintData {
  input {
    String rgt_hint
  }
  command <<<
    rgt_hint data \
      ~{rgt_hint}
  >>>
  parameter_meta {
    rgt_hint: ""
  }
  output {
    File out_stdout = stdout()
  }
}