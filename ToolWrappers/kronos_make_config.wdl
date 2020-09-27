version 1.0

task KronosMakeConfig {
  input {
    File? output_filename
    String components
  }
  command <<<
    kronos make_config \
      ~{components} \
      ~{if defined(output_filename) then ("--output_filename " +  '"' + output_filename + '"') else ""}
  >>>
  parameter_meta {
    output_filename: "a name for the resultant config file\\n"
    components: "list of component names"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
  }
}