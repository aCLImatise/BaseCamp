version 1.0

task Noreturn {
  input {
    Boolean? system
  }
  command <<<
    noreturn \
      ~{if (system) then "-system" else ""}
  >>>
  parameter_meta {
    system: "menu       [unix] Target operating system for\\nend-of-line format (Values: unix (Unix/Linux\\nsystems); pc (Windows/DOS); mac (Apple\\nMacintosh))"
  }
  output {
    File out_stdout = stdout()
  }
}