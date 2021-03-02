version 1.0

task TestGromacsPypy {
  input {
    String _genionshdneutral
    String var_1
    String _initemym
    String var_3
    String _equihadsh
    String __equihadshequihadshcompactpdb
    String tpr
    String xtc
    String edr
    String var_9
    String _usrlocallibpythonsitepackagesgromacspytestfilesympdb
  }
  command <<<
    test_gromacs_py_py \
      ~{_genionshdneutral} \
      ~{var_1} \
      ~{_initemym} \
      ~{var_3} \
      ~{_equihadsh} \
      ~{__equihadshequihadshcompactpdb} \
      ~{tpr} \
      ~{xtc} \
      ~{edr} \
      ~{var_9} \
      ~{_usrlocallibpythonsitepackagesgromacspytestfilesympdb}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gromacs_py:1.2.1--py_0"
  }
  parameter_meta {
    _genionshdneutral: ": genion_SH3_D_neutral"
    var_1: ": 1y0m"
    _initemym: ": Init_em_1y0m"
    var_3: ": 1y0m"
    _equihadsh: ": equi_HA_D_SH3"
    __equihadshequihadshcompactpdb: ": .../equi_HA_D_SH3/equi_HA_D_SH3_compact.pdb"
    tpr: ": .../equi_HA_D_SH3/equi_HA_D_SH3.tpr"
    xtc: ": .../equi_HA_D_SH3/equi_HA_D_SH3.xtc"
    edr: ": .../equi_HA_D_SH3/equi_HA_D_SH3.edr"
    var_9: ": 1y0m"
    _usrlocallibpythonsitepackagesgromacspytestfilesympdb: ": usr/local/lib/python3.8/site-packages/gromacs_py/test_files/1y0m.pdb"
  }
  output {
    File out_stdout = stdout()
  }
}