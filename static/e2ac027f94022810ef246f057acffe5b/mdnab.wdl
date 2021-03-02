version 1.0

task Mdnab {
  input {
    String pdb
    String prm
    String t_raj
    String gb_flag
    String pico_secs
    String res_force
  }
  command <<<
    mdnab \
      ~{pdb} \
      ~{prm} \
      ~{t_raj} \
      ~{gb_flag} \
      ~{pico_secs} \
      ~{res_force}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pdb: "= PDB file name"
    prm: "= parameter-topology file name"
    t_raj: "= file name for trajectory (netCDF format)\\n(the extension .nc is automatically added)"
    gb_flag: "= integer (0 for GB OFF, 1, 2, 5, 7, or 8 for GB ON)"
    pico_secs: "= integer (time of production phase)\\n(mdsteps = picosecs * 1000/2, because rattle is used)"
    res_force: "= force constant for restraints (kcal/mol/A2)\\n(must be given when restraints are specified!)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}