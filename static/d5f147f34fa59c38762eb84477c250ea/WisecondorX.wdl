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
    docker: "quay.io/biocontainers/wisecondorx:1.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    loglevel: ""
  }
  output {
    File out_stdout = stdout()
  }
}