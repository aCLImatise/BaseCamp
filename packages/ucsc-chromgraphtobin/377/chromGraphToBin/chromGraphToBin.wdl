version 1.0

task ChromGraphToBin {
  input {
    String? xxx
  }
  command <<<
    chromGraphToBin \
      ~{if defined(xxx) then ("-xxx " +  '"' + xxx + '"') else ""}
  >>>
  parameter_meta {
    xxx: ""
  }
  output {
    File out_stdout = stdout()
  }
}