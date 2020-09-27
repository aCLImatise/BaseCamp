version 1.0

task CheckMandatoryFilessh {
  input {
    String basename
    File file
    String? suffix
  }
  command <<<
    check_mandatory_files_sh \
      ~{basename} \
      ~{file} \
      ~{suffix}
  >>>
  parameter_meta {
    basename: ""
    file: ""
    suffix: ""
  }
  output {
    File out_stdout = stdout()
  }
}