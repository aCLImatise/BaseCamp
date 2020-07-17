version 1.0

task PyqiServeHtmlInterface {
  input {
    Int? interface_module
  }
  command <<<
    pyqi serve-html-interface \
      ~{if defined(interface_module) then ("--interface-module " +  '"' + interface_module + '"') else ""}
  >>>
  parameter_meta {
    interface_module: "The module to serve the interface for [REQUIRED]"
  }
}