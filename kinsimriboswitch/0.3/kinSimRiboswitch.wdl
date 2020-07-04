version 1.0

task KinSimRiboswitch {
  input {
    String? energy_band_width
    String? minimal_barrier_height
    String? folding_temperature_performed
    Boolean? allows_lonely_pairs
    Boolean? remove_disconnected_structures
    String? file_containing_structures
    Boolean? let_barriers_output
    Boolean? skip_generation_use
    String? use_monomer_basin
    String? ligand_concentration_mol
    String? bonus_energy_binding
    Boolean? folding_rate_rna
    Boolean? dimerization_rate_m
    String? _simulation_time
    Boolean? force_run_exists
    String? args
    String sequence_dot_fast_a
  }
  command <<<
    kinSimRiboswitch \
      ~{args} \
      ~{sequence_dot_fast_a} \
      ~{if defined(energy_band_width) then ("-E " +  '"' + energy_band_width + '"') else ""} \
      ~{if defined(minimal_barrier_height) then ("-m " +  '"' + minimal_barrier_height + '"') else ""} \
      ~{if defined(folding_temperature_performed) then ("-T " +  '"' + folding_temperature_performed + '"') else ""} \
      ~{true="-l" false="" allows_lonely_pairs} \
      ~{true="-r" false="" remove_disconnected_structures} \
      ~{if defined(file_containing_structures) then ("-a " +  '"' + file_containing_structures + '"') else ""} \
      ~{true="-c" false="" let_barriers_output} \
      ~{true="-M" false="" skip_generation_use} \
      ~{if defined(use_monomer_basin) then ("-s " +  '"' + use_monomer_basin + '"') else ""} \
      ~{if defined(ligand_concentration_mol) then ("-L " +  '"' + ligand_concentration_mol + '"') else ""} \
      ~{if defined(bonus_energy_binding) then ("-B " +  '"' + bonus_energy_binding + '"') else ""} \
      ~{true="-F" false="" folding_rate_rna} \
      ~{true="-D" false="" dimerization_rate_m} \
      ~{if defined(_simulation_time) then ("-t " +  '"' + _simulation_time + '"') else ""} \
      ~{true="-f" false="" force_run_exists}
  >>>
  parameter_meta {
    energy_band_width: ":    Energy band width (in kcal) in which structures are completely enumerated. [15] To achieve reasonable runtimes, use RNAsubopt -e <xx> | wc -l to count the structures and keep it below a few millions."
    minimal_barrier_height: ":    Minimal barrier height (barriers --minh). [1] Minima seperated from their respective father by a lower barrier are merged with it."
    folding_temperature_performed: ":    Folding temperature in deg Celsius at which the simulation is performed. [37]"
    allows_lonely_pairs: ":       Allows lonely pairs. By default, only \"canonical\" structures (i.e. such without any lonely pairs) are generated."
    remove_disconnected_structures: ":       Remove disconnected structures (i.e. not reachable from mfe) instead of trying to connect them with the findpath heuristic."
    file_containing_structures: ":    File containing additional structures to be included into the simulation, e.g. waterfall output."
    let_barriers_output: "Let barriers output a list of contact / transient states, ie those having a neighbor in a different basin."
    skip_generation_use: ":       Skip generation of macro states but use existing files as input. Pass file names of barriers files of monomer and dimer world as positional parameters. Assumes existence of BARFILE_FULL.sbmap. Only the options below and -T will have an effect if -M is given. Use the same temperature as during the generation of the macro states, or the rates will be incorrect."
    use_monomer_basin: ": Use the monomer basin containing structure <ss> as start state for the simulation. By default, the basin containing the open chain (i.e. without any basepairs) is used. When passing an integer <ii>, it's used as start state directly. When removing disconnected states (-r), <ii> does NOT necessarily correspond to the macrostate number from Barriers (e.g. for macrostates 1, 2, 3 where 2 has been removed, -s 2 starts in macrostate 3). To refer directly to Barriers' macrostates, use prefixes mon and dim (e.g. -s mon15 or -s dim1) for monomer or dimer macrostates, respectively. Phew!"
    ligand_concentration_mol: ":    Ligand concentration in molar =  mol / l = mol / dm^3 in the cell [1e-3]"
    bonus_energy_binding: ":    Bonus energy for binding the ligand (>=0, in kcal/mol). With -M, specifying -B will re-compute the monomer<->dimer transition matrix, else the existing one is used. [9.59]"
    folding_rate_rna: ":       Folding rate of RNA in s^-1 (pre-exponential factor). [1e6]"
    dimerization_rate_m: ":       Dimerization rate in (M s)^-1 (pre-exponential factor). [1.7e5]"
    _simulation_time: ":    Simulation time. [1e16]"
    force_run_exists: ":       Force run, even if a lock file exists. If a lock file is found and -f is not given, the user is promted to confirm the run."
    args: ""
    sequence_dot_fast_a: ""
  }
}