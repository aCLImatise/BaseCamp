version 1.0

task Jimage {
  input {
    Boolean? verbose
    Boolean? dir
    String? include
  }
  command <<<
    jimage \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (dir) then "--dir" else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""}
  >>>
  parameter_meta {
    verbose: ", list will also print entry size and offset attributes."
    dir: "Target directory for extract directive"
    include: "Pattern list for filtering entries."
  }
  output {
    File out_stdout = stdout()
  }
}