version 1.0

task Charge {
  input {
    Boolean? window
    Boolean? aa_data
    Boolean? plot
  }
  command <<<
    charge \
      ~{if (window) then "-window" else ""} \
      ~{if (aa_data) then "-aadata" else ""} \
      ~{if (plot) then "-plot" else ""}
  >>>
  parameter_meta {
    window: "integer    [5] Window length (Integer 1 or more)"
    aa_data: "datafile   [Eamino.dat] Amino acids properties and\\nmolecular weight data file"
    plot: "toggle     [N] Produce graphic"
  }
  output {
    File out_stdout = stdout()
  }
}