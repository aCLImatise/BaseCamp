version 1.0

task BiocondautilsBot {
  input {
    String? loglevel
  }
  command <<<
    bioconda_utils bot \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bioconda-utils:0.17.4--pyhdfd78af_0"
  }
  parameter_meta {
    loglevel: "Log level (default: 'info')"
  }
  output {
    File out_stdout = stdout()
  }
}