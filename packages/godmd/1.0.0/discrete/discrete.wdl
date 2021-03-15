version 1.0

task Discrete {
  input {
    Boolean? param__settings
    Boolean? pdb_in
    Boolean? ener
    Boolean? trj
    Boolean? pdb_targ
    Boolean? log_calculation_log
    Boolean? p_one
    Boolean? p_two
  }
  command <<<
    discrete \
      ~{if (param__settings) then "-i" else ""} \
      ~{if (pdb_in) then "-pdbin" else ""} \
      ~{if (ener) then "-ener" else ""} \
      ~{if (trj) then "-trj" else ""} \
      ~{if (pdb_targ) then "-pdbtarg" else ""} \
      ~{if (log_calculation_log) then "-o" else ""} \
      ~{if (p_one) then "-p1" else ""} \
      ~{if (p_two) then "-p2" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/godmd:1.0.0--hfad81c2_0"
  }
  parameter_meta {
    param__settings: "param          Settings"
    pdb_in: "raw PDB file   Initial PDB"
    ener: "energy         Energies"
    trj: "trajectory.pdb Trajectory (PDB)"
    pdb_targ: "target.pdb     Target PDB"
    log_calculation_log: "log            Calculation Log"
    p_one: "same.dat       Table of same residues"
    p_two: "sametarget.dat Table of same residues target"
  }
  output {
    File out_stdout = stdout()
  }
}