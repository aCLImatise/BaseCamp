version 1.0

task EndsInLf {
  input {
    Boolean? zero_ok
    File file
  }
  command <<<
    endsInLf \
      ~{file} \
      ~{if (zero_ok) then "-zeroOk" else ""}
  >>>
  parameter_meta {
    zero_ok: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}