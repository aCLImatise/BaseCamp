version 1.0

task Hmoment {
  input {
    Boolean? window
    Boolean? a_angle
    Boolean? bangle
    Boolean? baseline
    Boolean? plot
    Boolean? double
  }
  command <<<
    hmoment \
      ~{if (window) then "-window" else ""} \
      ~{if (a_angle) then "-aangle" else ""} \
      ~{if (bangle) then "-bangle" else ""} \
      ~{if (baseline) then "-baseline" else ""} \
      ~{if (plot) then "-plot" else ""} \
      ~{if (double) then "-double" else ""}
  >>>
  parameter_meta {
    window: "integer    [10] Window (Any integer value)"
    a_angle: "integer    [100] Alpha helix angle (degrees) (Any\\ninteger value)"
    bangle: "integer    [160] Beta sheet angle (degrees) (Any\\ninteger value)"
    baseline: "float      [0.35] Graph marker line (Any numeric value)"
    plot: "toggle     [N] Produce graphic"
    double: "boolean    [N] Plot two graphs"
  }
  output {
    File out_stdout = stdout()
  }
}