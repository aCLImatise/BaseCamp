version 1.0

task Shigatyper {
  input {
    Boolean? verbose
    String? n
  }
  command <<<
    shigatyper \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    verbose: ""
    n: ""
  }
  output {
    File out_stdout = stdout()
  }
}