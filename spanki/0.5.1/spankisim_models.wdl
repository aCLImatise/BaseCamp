version 1.0

task SpankisimModels {
  input {
    String? i
    String? var_map
    File? file
  }
  command <<<
    spankisim_models \
      ~{var_map} \
      ~{file} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    var_map: ""
    file: ""
  }
}