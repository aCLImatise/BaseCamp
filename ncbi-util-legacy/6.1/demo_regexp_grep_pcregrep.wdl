version 1.0

task DemoRegexpGrepPcregrep {
  input {
    String no
    String such
    File file
    String or
    Directory directory
  }
  command <<<
    demo_regexp_grep pcregrep \
      ~{no} \
      ~{such} \
      ~{file} \
      ~{or} \
      ~{directory}
  >>>
  parameter_meta {
    no: ""
    such: ""
    file: ""
    or: ""
    directory: ""
  }
}