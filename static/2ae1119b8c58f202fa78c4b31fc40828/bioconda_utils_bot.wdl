version 1.0

task BiocondaUtilsBot {
  input {
    String? loglevel
  }
  command <<<
    bioconda-utils bot \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""}
  >>>
  parameter_meta {
    loglevel: "Log level (default: 'info')"
  }
}