version 1.0

task Pyega3Subcommands {
  input {
    String? c
    File? sf
    File? cf
    Boolean? d
    Int pye_ga_three
  }
  command <<<
    pyega3 subcommands \
      ~{pye_ga_three} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(sf) then ("-sf " +  '"' + sf + '"') else ""} \
      ~{if defined(cf) then ("-cf " +  '"' + cf + '"') else ""} \
      ~{if (d) then "-d" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pyega3:3.4.1--py_0"
  }
  parameter_meta {
    c: ""
    sf: ""
    cf: ""
    d: ""
    pye_ga_three: ""
  }
  output {
    File out_stdout = stdout()
  }
}