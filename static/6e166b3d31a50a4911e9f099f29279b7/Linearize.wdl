version 1.0

task Linearize {
  input {
    String? version
    Boolean? b
    String output_text
    String? an_k
    String bank_name
  }
  command <<<
    Linearize \
      ~{output_text} \
      ~{an_k} \
      ~{bank_name} \
      ~{if defined(version) then ("-version " +  '"' + version + '"') else ""} \
      ~{if (b) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    version: ""
    b: ""
    output_text: ""
    an_k: ""
    bank_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}