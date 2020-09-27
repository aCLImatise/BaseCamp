version 1.0

task Squid {
  input {
    String? o
    String? b
  }
  command <<<
    squid \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    b: ""
  }
  output {
    File out_stdout = stdout()
  }
}