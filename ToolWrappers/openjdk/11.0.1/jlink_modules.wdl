version 1.0

task JlinkModules {
  input {
    String? add_modules
    File? module_path
    String j_link
    String options
  }
  command <<<
    jlink modules \
      ~{j_link} \
      ~{options} \
      ~{if defined(add_modules) then ("--add-modules " +  '"' + add_modules + '"') else ""} \
      ~{if defined(module_path) then ("--module-path " +  '"' + module_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    add_modules: ""
    module_path: ""
    j_link: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}