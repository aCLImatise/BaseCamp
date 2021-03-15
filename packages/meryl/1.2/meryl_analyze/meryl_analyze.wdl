version 1.0

task Merylanalyze {
  input {
    String? prefix
    String? mers
  }
  command <<<
    meryl_analyze \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(mers) then ("-mers " +  '"' + mers + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meryl:1.2--he1b5a44_0"
  }
  parameter_meta {
    prefix: ""
    mers: ""
  }
  output {
    File out_stdout = stdout()
  }
}