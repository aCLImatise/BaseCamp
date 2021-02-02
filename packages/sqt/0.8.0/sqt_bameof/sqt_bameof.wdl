version 1.0

task SqtBameof {
  input {
    Boolean? quiet
  }
  command <<<
    sqt bameof \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    quiet: "Don't print anything, just set the exit code."
  }
  output {
    File out_stdout = stdout()
  }
}