version 1.0

task Anviselftest {
  input {
    Boolean? force
    Boolean? debug
    String? suite
  }
  command <<<
    anvi_self_test \
      ~{if (force) then "--force" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(suite) then ("--suite " +  '"' + suite + '"') else ""}
  >>>
  parameter_meta {
    force: ""
    debug: ""
    suite: ""
  }
  output {
    File out_stdout = stdout()
  }
}