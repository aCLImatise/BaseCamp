version 1.0

task OutputResults {
  input {
    String? version
    String? p
    Boolean? b
    String output_text
    String? an_k
    String bank_name
  }
  command <<<
    OutputResults \
      ~{output_text} \
      ~{an_k} \
      ~{bank_name} \
      ~{if defined(version) then ("-version " +  '"' + version + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if (b) then "-b" else ""}
  >>>
  parameter_meta {
    version: ""
    p: ""
    b: ""
    output_text: ""
    an_k: ""
    bank_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}