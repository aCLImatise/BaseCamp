version 1.0

task StochGenDimerRates {
  input {
    Int? mfe_sequence_used
    Int? folding_temperature_deg
    Float? bonus_energy_binding
    String? exploration_threshold_unconstrained
    Boolean? _be_verbose
    String? params
    String monomer_dots_b_map
    String dimer_dots_b_map
  }
  command <<<
    stoch_genDimerRates \
      ~{params} \
      ~{monomer_dots_b_map} \
      ~{dimer_dots_b_map} \
      ~{if defined(mfe_sequence_used) then ("-m " +  '"' + mfe_sequence_used + '"') else ""} \
      ~{if defined(folding_temperature_deg) then ("-T " +  '"' + folding_temperature_deg + '"') else ""} \
      ~{if defined(bonus_energy_binding) then ("-B " +  '"' + bonus_energy_binding + '"') else ""} \
      ~{if defined(exploration_threshold_unconstrained) then ("-E " +  '"' + exploration_threshold_unconstrained + '"') else ""} \
      ~{if (_be_verbose) then "-v" else ""}
  >>>
  parameter_meta {
    mfe_sequence_used: ":  MFE of the sequence. Used to prevent numerical problems\\nwhen computing the partition functions [0]"
    folding_temperature_deg: ":  Folding temperature in deg Celsius [37]"
    bonus_energy_binding: ":  Bonus energy for binding the ligand (>=0, in kcal/mol) [9.59]"
    exploration_threshold_unconstrained: ":  Exploration threshold in unconstrained landscape. Used to skip\\nhashing of constrained structures below threshold [infinity]"
    _be_verbose: ":     Be verbose"
    params: ""
    monomer_dots_b_map: ""
    dimer_dots_b_map: ""
  }
  output {
    File out_stdout = stdout()
  }
}