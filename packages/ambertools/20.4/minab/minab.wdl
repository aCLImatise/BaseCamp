version 1.0

task Minab {
  input {
    String pdb
    String prm
    String out_pdb
    String gb_flag
    String niter
    String res_force
  }
  command <<<
    minab \
      ~{pdb} \
      ~{prm} \
      ~{out_pdb} \
      ~{gb_flag} \
      ~{niter} \
      ~{res_force}
  >>>
  parameter_meta {
    pdb: "= PDB file with initial coordinates"
    prm: "= parameter-topology file name"
    out_pdb: "= file name for refined coordinates (PDB format)"
    gb_flag: "= integer (1, 2, 5, 7, or 8 for GB ON, else GB OFF)"
    niter: "= integer (number of iterations)"
    res_force: "= force constant for restraints (kcal/mol/A2)\\n(must be given when restraints are specified!)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}