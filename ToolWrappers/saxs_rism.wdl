version 1.0

task SaxsRism {
  input {
    Boolean? _solute_pdb
    Boolean? _concion_bulk
    Boolean? _concwat_water
    Boolean? _qcut_cutoff
    Boolean? _dq_q
    Boolean? _cutoff_distance
    Boolean? _anomf_atomic
    Boolean? _exper_file
    Boolean? _expli_flag
    Boolean? _exclv_flag
    Boolean? _decomp_flag
    Boolean? _phase_phase
    Boolean? _tight_flag
    Boolean? _offcutoff_flag
    Boolean? _bfactor_using
    File? _output_output
    Boolean? grid_dir
    Boolean? g
    String saxs_rism
  }
  command <<<
    saxs_rism \
      ~{saxs_rism} \
      ~{if (_solute_pdb) then "-s" else ""} \
      ~{if (_concion_bulk) then "-m" else ""} \
      ~{if (_concwat_water) then "-w" else ""} \
      ~{if (_qcut_cutoff) then "-q" else ""} \
      ~{if (_dq_q) then "-i" else ""} \
      ~{if (_cutoff_distance) then "-c" else ""} \
      ~{if (_anomf_atomic) then "-a" else ""} \
      ~{if (_exper_file) then "-x" else ""} \
      ~{if (_expli_flag) then "-e" else ""} \
      ~{if (_exclv_flag) then "-v" else ""} \
      ~{if (_decomp_flag) then "-d" else ""} \
      ~{if (_phase_phase) then "-p" else ""} \
      ~{if (_tight_flag) then "-t" else ""} \
      ~{if (_offcutoff_flag) then "-f" else ""} \
      ~{if (_bfactor_using) then "-b" else ""} \
      ~{if (_output_output) then "-o" else ""} \
      ~{if (grid_dir) then "--grid_dir" else ""} \
      ~{if (g) then "-g" else ""}
  >>>
  parameter_meta {
    _solute_pdb: "--solute       pdb file of the solute"
    _concion_bulk: "--conc_ion     bulk concentration of salt [M]"
    _concwat_water: "--conc_wat     water concentration [default 55.34M]"
    _qcut_cutoff: "--qcut         momentum transfer q cutoff [default 0.5 A^-1]"
    _dq_q: "--dq           q spacing [default 0.01 A^-1]"
    _cutoff_distance: "--cutoff       distance cutoff [default 20 A]"
    _anomf_atomic: "--anom_f       f' of atomic scattering factor, used for ASAXS calculation,\\ncurrently only applied to Rb+, Sr2+ and Br- [default 0: off-edge]"
    _exper_file: "--exper        the experimental data file to read q from, once specified this overrides dq and qcut\\nexpect the first column is q (A^-1)"
    _expli_flag: "--expli        flag for accounting for explicit H atoms in pdb file"
    _exclv_flag: "--exclV        flag for merging those contribution of the grid points inside the excluded volume of the solute into the solute"
    _decomp_flag: "--decomp       flag for decomposing SAXS intensity into site contributions (lead to 2-5x computational time)"
    _phase_phase: "--phase        output phase and error analysis instead of partial intensities"
    _tight_flag: "--tight        flag for using tighter convergence criteria for Lebedev quadrature (expect more time)"
    _offcutoff_flag: "--off_cutoff   flag for turning off cutoff, using all grid points for the calculation"
    _bfactor_using: "--bfactor      using B-factor in the PDB file to account for solute flexibility"
    _output_output: "--output       output file"
    grid_dir: ""
    g: ""
    saxs_rism: "-g   --grid_dir     folder where all the rism3d output found (expecting *.dx files there)"
  }
  output {
    File out_stdout = stdout()
    File out__output_output = "${in__output_output}"
  }
}