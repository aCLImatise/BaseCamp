version 1.0

task Freak {
  input {
    Boolean? letters
    Boolean? step
    Boolean? window
    Boolean? plot
  }
  command <<<
    _freak \
      ~{if (letters) then "-letters" else ""} \
      ~{if (step) then "-step" else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if (plot) then "-plot" else ""}
  >>>
  parameter_meta {
    letters: "string     [gc] Residue letters (Any string)"
    step: "integer    [1] Stepping value (Any integer value)"
    window: "integer    [30] Averaging window (Any integer value)"
    plot: "toggle     [N] Produce graphic"
  }
  output {
    File out_stdout = stdout()
  }
}