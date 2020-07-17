version 1.0

task Linearize {
  input {
    Boolean? b
    String? version
    String output_text
    String? an_k
    String bank_name
  }
  command <<<
    Linearize \
      ~{output_text} \
      ~{an_k} \
      ~{bank_name} \
      ~{true="-b" false="" b} \
      ~{if defined(version) then ("-version " +  '"' + version + '"') else ""}
  >>>
  parameter_meta {
    b: ""
    version: ""
    output_text: ""
    an_k: ""
    bank_name: ""
  }
}