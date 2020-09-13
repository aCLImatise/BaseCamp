version 1.0

task Checkm {
  input {
    String? h
  }
  command <<<
    checkm \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  parameter_meta {
    h: ""
  }
  output {
    File out_stdout = stdout()
  }
}