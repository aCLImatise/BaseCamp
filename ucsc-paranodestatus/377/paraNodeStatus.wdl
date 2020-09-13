version 1.0

task ParaNodeStatus {
  input {
    Int? retries
    Boolean? long
  }
  command <<<
    paraNodeStatus \
      ~{if defined(retries) then ("-retries " +  '"' + retries + '"') else ""} \
      ~{if (long) then "-long" else ""}
  >>>
  parameter_meta {
    retries: "Number of retries to get in touch with machine.\\nThe first retry is after 1/100th of a second.\\nEach retry after that takes twice as long up to a maximum\\nof 1 second per retry.  Default is 7 retries and takes\\nabout a second."
    long: "List details of current and recent jobs."
  }
  output {
    File out_stdout = stdout()
  }
}