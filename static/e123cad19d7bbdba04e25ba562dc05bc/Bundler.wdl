version 1.0

task Bundler {
  input {
    Boolean? t
    Boolean? b
    String? an_k
    String bank_name
    String? ype
    String comma_separated_list_of_link_types_to_process
  }
  command <<<
    Bundler \
      ~{an_k} \
      ~{bank_name} \
      ~{ype} \
      ~{comma_separated_list_of_link_types_to_process} \
      ~{if (t) then "-t" else ""} \
      ~{if (b) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    t: ""
    b: ""
    an_k: ""
    bank_name: ""
    ype: ""
    comma_separated_list_of_link_types_to_process: ""
  }
  output {
    File out_stdout = stdout()
  }
}