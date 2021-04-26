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
    docker: "quay.io/biocontainers/plasmidid:1.6.5--hdfd78af_0"
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