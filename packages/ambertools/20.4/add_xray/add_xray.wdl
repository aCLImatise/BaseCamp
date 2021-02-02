version 1.0

task AddXray {
  input {
    String prm_top
    String sym_lib
    String atoms_f
    String sg_name
  }
  command <<<
    add_xray \
      ~{prm_top} \
      ~{sym_lib} \
      ~{atoms_f} \
      ~{sg_name}
  >>>
  parameter_meta {
    prm_top: ": amber topology, input and output files"
    sym_lib: ": symmetry operator file, CCP4 format (symop.lib)"
    atoms_f: ": scatter factor file, CCP4 format (atomsf.lib)"
    sg_name: ": spacegroup name (P1)"
  }
  output {
    File out_stdout = stdout()
  }
}