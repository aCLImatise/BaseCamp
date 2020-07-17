version 1.0

task Bundler {
  input {
    Boolean? b
    Boolean? t
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
      ~{true="-b" false="" b} \
      ~{true="-t" false="" t}
  >>>
  parameter_meta {
    b: ""
    t: ""
    an_k: ""
    bank_name: ""
    ype: ""
    comma_separated_list_of_link_types_to_process: ""
  }
}