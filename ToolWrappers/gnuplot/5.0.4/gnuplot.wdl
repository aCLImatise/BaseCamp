version 1.0

task Gnuplot {
  input {
    Boolean? persist
    Boolean? default_settings
    Array[Int] c
  }
  command <<<
    gnuplot \
      ~{if (persist) then "--persist" else ""} \
      ~{if (default_settings) then "--default-settings" else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  parameter_meta {
    persist: ""
    default_settings: ""
    c: "-e  \\\"command1; command2; ...\\\""
  }
  output {
    File out_stdout = stdout()
  }
}