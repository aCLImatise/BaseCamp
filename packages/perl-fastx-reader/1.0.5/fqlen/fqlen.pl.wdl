version 1.0

task Fqlenpl {
  command <<<
    fqlen_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/perl-fastx-reader:1.0.5--pl5262hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}