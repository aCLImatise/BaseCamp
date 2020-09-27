version 1.0

task GffutilscliFile {
  input {
    String gff_utils_cli
  }
  command <<<
    gffutils_cli file_ \
      ~{gff_utils_cli}
  >>>
  parameter_meta {
    gff_utils_cli: ""
  }
  output {
    File out_stdout = stdout()
  }
}