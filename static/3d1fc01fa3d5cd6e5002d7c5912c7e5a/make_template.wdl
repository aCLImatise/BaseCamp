version 1.0

task MakeTemplate {
  input {
    String? option
    String run_name
  }
  command <<<
    make_template \
      ~{run_name} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    option: ""
    run_name: ""
  }
}