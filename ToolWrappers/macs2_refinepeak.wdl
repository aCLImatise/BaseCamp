version 1.0

task Macs2Refinepeak {
  input {
    Array[File] i
    File? b
  }
  command <<<
    macs2 refinepeak \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    b: ""
  }
  output {
    File out_stdout = stdout()
  }
}