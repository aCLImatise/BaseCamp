version 1.0

task BiocondaUtilsBot {
  input {
    String loglevelLoglevel
  }
  command <<<
    bioconda-utils bot \
      ~{if defined(loglevelLoglevel) then ("--loglevel " +  '"' + loglevelLoglevel + '"') else ""}
  >>>
}