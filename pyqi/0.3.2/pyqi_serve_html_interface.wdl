version 1.0

task PyqiServeHtmlInterface {
  input {
    Int interfaceInterfaceModule
  }
  command <<<
    pyqi serve-html-interface \
      ~{if defined(interfaceInterfaceModule) then ("--interface-module " +  '"' + interfaceInterfaceModule + '"') else ""}
  >>>
}