version 1.0

task Minx {
  input {
    Boolean? tabulate
  }
  command <<<
    minx \
      ~{if (tabulate) then "--tabulate" else ""}
  >>>
  parameter_meta {
    tabulate: "[merlin]"
  }
  output {
    File out_stdout = stdout()
  }
}