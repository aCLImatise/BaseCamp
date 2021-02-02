version 1.0

task TestGromacsPypy {
  input {
    String var_0
    String _genionymwaterion
    String var_2
    String _genionshdneutral
    String var_4
    String _initemym
    String co_or_file
  }
  command <<<
    test_gromacs_py_py \
      ~{var_0} \
      ~{_genionymwaterion} \
      ~{var_2} \
      ~{_genionshdneutral} \
      ~{var_4} \
      ~{_initemym} \
      ~{co_or_file}
  >>>
  parameter_meta {
    var_0: ": 1y0m"
    _genionymwaterion: ": genion_1y0m_water_ion"
    var_2: ": 1y0m"
    _genionshdneutral: ": genion_SH3_D_neutral"
    var_4: ": 1y0m"
    _initemym: ": Init_em_1y0m"
    co_or_file: ": usr/local/lib/python3.8/site-packages/gromacs_py/test_files/1y0m.pdb"
  }
  output {
    File out_stdout = stdout()
  }
}