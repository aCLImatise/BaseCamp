version 1.0

task ArbEdit4 {
  input {
    String? loads_configuration
    String database
  }
  command <<<
    arb_edit4 \
      ~{database} \
      ~{if defined(loads_configuration) then ("-c " +  '"' + loads_configuration + '"') else ""}
  >>>
  parameter_meta {
    loads_configuration: "loads configuration 'config' (default: 'default_configuration')"
    database: ""
  }
}