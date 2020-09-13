version 1.0

task WisecondorX {
  input {
    String? loglevel
  }
  command <<<
    WisecondorX \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""}
  >>>
  parameter_meta {
    loglevel: ""
  }
  output {
    File out_stdout = stdout()
  }
}