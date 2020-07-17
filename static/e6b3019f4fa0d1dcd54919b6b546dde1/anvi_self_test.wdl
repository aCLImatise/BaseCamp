version 1.0

task AnviSelfTest {
  input {
    String? suite
    Boolean? debug
    Boolean? force
  }
  command <<<
    anvi-self-test \
      ~{if defined(suite) then ("--suite " +  '"' + suite + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    suite: ""
    debug: ""
    force: ""
  }
}