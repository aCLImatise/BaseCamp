version 1.0

task Fqlenpl {
  command <<<
    fqlen_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/perl-fastx-reader:1.0.2--pl526_0"
  }
  output {
    File out_stdout = stdout()
  }
}