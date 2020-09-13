version 1.0

task PATHOGIST {
  input {
    String? loglevel
  }
  command <<<
    PATHOGIST \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""}
  >>>
  parameter_meta {
    loglevel: "Set the logging level\\n"
  }
  output {
    File out_stdout = stdout()
  }
}