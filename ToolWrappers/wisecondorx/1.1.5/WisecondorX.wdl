version 1.0

task WisecondorX {
  input {
    String? loglevel
  }
  command <<<
    WisecondorX \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    loglevel: ""
  }
  output {
    File out_stdout = stdout()
  }
}