version 1.0

task Nospace {
  input {
    Boolean? menu
  }
  command <<<
    nospace \
      ~{if (menu) then "-menu" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    menu: "menu       [all] Remove whitespace (Values: all (all\\nwhitespace); end (trailing whitespace);\\nexcess (multiple whitespace characters))"
  }
  output {
    File out_stdout = stdout()
  }
}