version 1.0

task Merlin {
  input {
    Boolean? tabulate
  }
  command <<<
    merlin \
      ~{if (tabulate) then "--tabulate" else ""}
  >>>
  parameter_meta {
    tabulate: "[merlin]"
  }
  output {
    File out_stdout = stdout()
  }
}