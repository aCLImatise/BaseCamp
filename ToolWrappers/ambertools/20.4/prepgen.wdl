version 1.0

task Prepgen {
  input {
    String? rn
  }
  command <<<
    prepgen \
      ~{if defined(rn) then ("-rn " +  '"' + rn + '"') else ""}
  >>>
  parameter_meta {
    rn: "optional"
  }
  output {
    File out_stdout = stdout()
  }
}