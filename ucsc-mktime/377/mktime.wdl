version 1.0

task Mktime {
  input {
    String yyyy_mm_dd
    String hh
  }
  command <<<
    mktime \
      ~{yyyy_mm_dd} \
      ~{hh}
  >>>
  parameter_meta {
    yyyy_mm_dd: ""
    hh: ""
  }
  output {
    File out_stdout = stdout()
  }
}