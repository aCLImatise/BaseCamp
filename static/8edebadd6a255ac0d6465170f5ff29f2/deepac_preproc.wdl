version 1.0

task DeepacPreproc {
  input {
    String config
  }
  command <<<
    deepac preproc \
      ~{config}
  >>>
  parameter_meta {
    config: "Preprocessing config file."
  }
  output {
    File out_stdout = stdout()
  }
}