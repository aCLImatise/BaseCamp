version 1.0

task Byobuselectprofile {
  input {
    Boolean? list
    Boolean? background
    Boolean? foreground
  }
  command <<<
    byobu_select_profile \
      ~{if (list) then "--list" else ""} \
      ~{if (background) then "--background" else ""} \
      ~{if (foreground) then "--foreground" else ""}
  >>>
  parameter_meta {
    list: "list available profiles"
    background: "set the background color"
    foreground: "set the foreground color"
  }
  output {
    File out_stdout = stdout()
  }
}