version 1.0

task GbfalncutGENBANKFILE {
  input {
    String perl_regex
  }
  command <<<
    gbfalncut GENBANK_FILE \
      ~{perl_regex}
  >>>
  runtime {
    docker: "quay.io/biocontainers/perl-fast:1.06--pl526_0"
  }
  parameter_meta {
    perl_regex: ""
  }
  output {
    File out_stdout = stdout()
  }
}