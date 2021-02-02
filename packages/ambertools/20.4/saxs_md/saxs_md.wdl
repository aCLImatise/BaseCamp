version 1.0

task SaxsMd {
  input {
    Boolean? _solvent_file
    Boolean? _qcut_cutoff
    Boolean? _dq_q
    Boolean? _cutoff_generate
    Boolean? _tight_use
    Boolean? _anomf_anomalous
    Boolean? _expli_flag
    Boolean? _corrected_d
    Boolean? _bcutoff_distance
    Boolean? _exper_experiment
    File? _output_output
    Boolean? system
    Boolean? i
    String saxs_md
  }
  command <<<
    saxs_md \
      ~{saxs_md} \
      ~{if (_solvent_file) then "-w" else ""} \
      ~{if (_qcut_cutoff) then "-q" else ""} \
      ~{if (_dq_q) then "-d" else ""} \
      ~{if (_cutoff_generate) then "-c" else ""} \
      ~{if (_tight_use) then "-t" else ""} \
      ~{if (_anomf_anomalous) then "-a" else ""} \
      ~{if (_expli_flag) then "-e" else ""} \
      ~{if (_corrected_d) then "-k" else ""} \
      ~{if (_bcutoff_distance) then "-b" else ""} \
      ~{if (_exper_experiment) then "-x" else ""} \
      ~{if (_output_output) then "-o" else ""} \
      ~{if (system) then "--system" else ""} \
      ~{if (i) then "-i" else ""}
  >>>
  parameter_meta {
    _solvent_file: "--solvent      pdb file of the solvent"
    _qcut_cutoff: "--qcut         momentum transfer q cutoff [default 1.0 A^-1]"
    _dq_q: "--dq           q spacing [default 0.01 A^-1]"
    _cutoff_generate: "--cutoff       generate a box with buffer=cutoff [default 10A]. Only keeping solvent molecules\\nwithin this box for SAXS calculation"
    _tight_use: "--tight        use tighter convergence criteria for Lebedev quadrature"
    _anomf_anomalous: "--anom_f       f' for anomalous scattering, used for ASAXS calculation,\\ncurrently only support Rb+, Sr2+ and Br- [default 0: off-edge]"
    _expli_flag: "--expli        flag for accounting for explicit H atoms in pdb file"
    _corrected_d: "--corrected    correction d for bulk density difference between the blank and sample simulation\\nthe excess density will be g = (1-d)rho_sample - rho_blank"
    _bcutoff_distance: "--bcutoff      minimum distance between the solvent and solute to apply the above correction"
    _exper_experiment: "--exper        experiment data file to read q from, once specified this overrides dq and qcut\\nExpect the first column is q (A^-1)"
    _output_output: "--output       output file"
    system: ""
    i: ""
    saxs_md: "-i   --system       pdb file of the solute"
  }
  output {
    File out_stdout = stdout()
    File out__output_output = "${in__output_output}"
  }
}