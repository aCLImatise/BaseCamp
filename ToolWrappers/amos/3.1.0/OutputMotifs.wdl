version 1.0

task OutputMotifs {
  input {
    String? version
    Boolean? b
    String? an_k
    String bank_name
  }
  command <<<
    OutputMotifs \
      ~{an_k} \
      ~{bank_name} \
      ~{if defined(version) then ("-version " +  '"' + version + '"') else ""} \
      ~{if (b) then "-b" else ""}
  >>>
  parameter_meta {
    version: ""
    b: ""
    an_k: ""
    bank_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}