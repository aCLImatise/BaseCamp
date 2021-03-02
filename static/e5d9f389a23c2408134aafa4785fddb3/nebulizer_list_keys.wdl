version 1.0

task NebulizerListKeys {
  input {
    String? name
    String wild_cards_dot
  }
  command <<<
    nebulizer list_keys \
      ~{wild_cards_dot} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name: "list only aliases matching name. Can include glob-style"
    wild_cards_dot: "-s, --show-api-keys  show the API key string associated with each alias"
  }
  output {
    File out_stdout = stdout()
  }
}