version 1.0

task DumpBlob {
  input {
    String? b
  }
  command <<<
    dumpBlob \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    b: ""
  }
}