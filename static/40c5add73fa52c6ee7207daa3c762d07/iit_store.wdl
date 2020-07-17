version 1.0

task IitStore {
  input {
    String? o
    String? options_dot_dot_dot
    String input_file
  }
  command <<<
    iit_store \
      ~{options_dot_dot_dot} \
      ~{input_file} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    options_dot_dot_dot: ""
    input_file: ""
  }
}