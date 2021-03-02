version 1.0

task Cccheck {
  input {
    String? assembly
    String? method
    String? debug
  }
  command <<<
    cccheck \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assembly: "Assembly to check."
    method: "Method name (if you want to check only it)."
    debug: "Show debug information"
  }
  output {
    File out_stdout = stdout()
  }
}