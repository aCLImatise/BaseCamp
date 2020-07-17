version 1.0

task OutputResults {
  input {
    Boolean? b
    String? p
    String? version
    String output_text
    String? an_k
    String bank_name
  }
  command <<<
    OutputResults \
      ~{output_text} \
      ~{an_k} \
      ~{bank_name} \
      ~{true="-b" false="" b} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(version) then ("-version " +  '"' + version + '"') else ""}
  >>>
  parameter_meta {
    b: ""
    p: ""
    version: ""
    output_text: ""
    an_k: ""
    bank_name: ""
  }
}