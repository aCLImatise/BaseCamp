version 1.0

task MikadoSerialise {
  input {
    String? start_method
  }
  command <<<
    mikado serialise \
      ~{if defined(start_method) then ("--start-method " +  '"' + start_method + '"') else ""}
  >>>
  parameter_meta {
    start_method: ""
  }
  output {
    File out_stdout = stdout()
  }
}