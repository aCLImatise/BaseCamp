version 1.0

task IgdiscoverDbdiff {
  input {
    String? color
    String a
    String b
  }
  command <<<
    igdiscover dbdiff \
      ~{a} \
      ~{b} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""}
  >>>
  parameter_meta {
    color: "Whether to colorize output\\n"
    a: ""
    b: ""
  }
  output {
    File out_stdout = stdout()
  }
}