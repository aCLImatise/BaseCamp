version 1.0

task OutputMotifs {
  input {
    Boolean? b
    String? version
    String? an_k
    String bank_name
  }
  command <<<
    OutputMotifs \
      ~{an_k} \
      ~{bank_name} \
      ~{true="-b" false="" b} \
      ~{if defined(version) then ("-version " +  '"' + version + '"') else ""}
  >>>
  parameter_meta {
    b: ""
    version: ""
    an_k: ""
    bank_name: ""
  }
}