version 1.0

task CheckMandatoryFilessh {
  input {
    String basename
    File var_file
    String? suffix
  }
  command <<<
    check_mandatory_files_sh \
      ~{basename} \
      ~{var_file} \
      ~{suffix}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    basename: ""
    var_file: ""
    suffix: ""
  }
  output {
    File out_stdout = stdout()
  }
}