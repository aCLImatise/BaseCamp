version 1.0

task IpaValidate {
  input {
    String ipa
  }
  command <<<
    ipa validate \
      ~{ipa}
  >>>
  parameter_meta {
    ipa: ""
  }
  output {
    File out_stdout = stdout()
  }
}