version 1.0

task Xtermcolor {
  input {
    String? color
    String? compat
  }
  command <<<
    xtermcolor \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if defined(compat) then ("--compat " +  '"' + compat + '"') else ""}
  >>>
  parameter_meta {
    color: "Color to convert"
    compat: "Compatibility mode. Defaults to xterm.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}