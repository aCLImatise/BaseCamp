version 1.0

task FaToFastq {
  input {
    String? qual
  }
  command <<<
    faToFastq \
      ~{if defined(qual) then ("-qual " +  '"' + qual + '"') else ""}
  >>>
  parameter_meta {
    qual: "quality letter to use.  Default is '<' which is good I think...."
  }
  output {
    File out_stdout = stdout()
  }
}