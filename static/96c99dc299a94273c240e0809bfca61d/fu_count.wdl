version 1.0

task FuCount {
  input {
    String f_qc
    File file_n
  }
  command <<<
    fu-count \
      ~{f_qc} \
      ~{file_n}
  >>>
  parameter_meta {
    f_qc: ""
    file_n: ""
  }
}