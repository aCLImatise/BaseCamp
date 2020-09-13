version 1.0

task Iep {
  input {
    Boolean? amino
    Boolean? carboxyl
    Boolean? lysine_modified
    Boolean? disulphide_s
    Boolean? pk_data
    Boolean? step
    Boolean? plot
  }
  command <<<
    iep \
      ~{if (amino) then "-amino" else ""} \
      ~{if (carboxyl) then "-carboxyl" else ""} \
      ~{if (lysine_modified) then "-lysinemodified" else ""} \
      ~{if (disulphide_s) then "-disulphides" else ""} \
      ~{if (pk_data) then "-pkdata" else ""} \
      ~{if (step) then "-step" else ""} \
      ~{if (plot) then "-plot" else ""}
  >>>
  parameter_meta {
    amino: "integer    [1] Number of N-termini (Integer 0 or more)"
    carboxyl: "integer    [1] Number of C-termini (Integer 0 or more)"
    lysine_modified: "integer    [0] Number of modified lysines (Integer 0 or\\nmore)"
    disulphide_s: "integer    [0] Number of disulphide bridges (Integer 0\\nor more)"
    pk_data: "datafile   [Epk.dat] Values of pKa for amino acids"
    step: "float      [.5] Step value for pH (Number from 0.010 to\\n1.000)"
    plot: "toggle     [N] Plot charge vs pH"
  }
  output {
    File out_stdout = stdout()
  }
}