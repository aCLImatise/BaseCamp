version 1.0

task Hmmscore {
  input {
    String? option
    String run_name
  }
  command <<<
    hmmscore \
      ~{run_name} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    option: ""
    run_name: ""
  }
}