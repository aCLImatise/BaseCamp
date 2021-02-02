version 1.0

task MotifRaptorSet {
  input {
    String? parameter_name
    String? parameter_value
  }
  command <<<
    MotifRaptor set \
      ~{if defined(parameter_name) then ("--parametername " +  '"' + parameter_name + '"') else ""} \
      ~{if defined(parameter_value) then ("--parametervalue " +  '"' + parameter_value + '"') else ""}
  >>>
  parameter_meta {
    parameter_name: "Parameter Name"
    parameter_value: "Parameter Value\\n"
  }
  output {
    File out_stdout = stdout()
  }
}