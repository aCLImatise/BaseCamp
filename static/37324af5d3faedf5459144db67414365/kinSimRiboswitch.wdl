version 1.0

task KinSimRiboswitch {
  input {
    Int? energy_band_width
    Int? minimal_barrier_height
    Int? folding_temperature_isperformed
    Boolean? allows_lonely_pairs
    Boolean? remove_disconnected_structures
    File? file_containing_structures
    Boolean? let_barriers_output
    Boolean? skip_generation_use
    Int? ii_use_basin
    Float? ligand_concentration_mol
    Float? bonus_energy_binding
    Boolean? folding_rate_rna
    Boolean? dimerization_rate_factor
    Float? _simulation_time
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
      ~{if defined(folding_temperature_isperformed) then ("-T " +  '"' + folding_temperature_isperformed + '"') else ""} \
      ~{if (allows_lonely_pairs) then "-l" else ""} \
      ~{if (remove_disconnected_structures) then "-r" else ""} \
      ~{if defined(file_containing_structures) then ("-a " +  '"' + file_containing_structures + '"') else ""} \
      ~{if (let_barriers_output) then "-c" else ""} \
      ~{if (skip_generation_use) then "-M" else ""} \
      ~{if defined(ii_use_basin) then ("-s " +  '"' + ii_use_basin + '"') else ""} \
      ~{if defined(ligand_concentration_mol) then ("-L " +  '"' + ligand_concentration_mol + '"') else ""} \
      ~{if defined(bonus_energy_binding) then ("-B " +  '"' + bonus_energy_binding + '"') else ""} \
      ~{if (folding_rate_rna) then "-F" else ""} \
      ~{if (dimerization_rate_factor) then "-D" else ""} \
      ~{if defined(_simulation_time) then ("-t " +  '"' + _simulation_time + '"') else ""} \
      ~{if (force_run_exists) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    energy_band_width: ":    Energy band width (in kcal) in which structures are completely\\nenumerated. [15]\\nTo achieve reasonable runtimes, use RNAsubopt -e <xx> | wc -l to\\ncount the structures and keep it below a few millions."
    minimal_barrier_height: ":    Minimal barrier height (barriers --minh). [1]\\nMinima seperated from their respective father by a lower barrier\\nare merged with it."
    folding_temperature_isperformed: ":    Folding temperature in deg Celsius at which the simulation is\\nperformed. [37]"
    allows_lonely_pairs: ":       Allows lonely pairs. By default, only \\\"canonical\\\" structures\\n(i.e. such without any lonely pairs) are generated."
    remove_disconnected_structures: ":       Remove disconnected structures (i.e. not reachable from mfe)\\ninstead of trying to connect them with the findpath heuristic."
    file_containing_structures: ":    File containing additional structures to be included into the\\nsimulation, e.g. waterfall output."
    let_barriers_output: "Let barriers output a list of contact / transient states, ie\\nthose having a neighbor in a different basin."
    skip_generation_use: ":       Skip generation of macro states but use existing files as input.\\nPass file names of barriers files of monomer and dimer world as\\npositional parameters. Assumes existence of BARFILE_FULL.sbmap.\\nOnly the options below and -T will have an effect if -M is\\ngiven. Use the same temperature as during the generation of the\\nmacro states, or the rates will be incorrect."
    ii_use_basin: "/ii: Use the monomer basin containing structure <ss> as start state\\nfor the simulation. By default, the basin containing the open\\nchain (i.e. without any basepairs) is used.\\nWhen passing an integer <ii>, it's used as start state directly.\\nWhen removing disconnected states (-r), <ii> does NOT\\nnecessarily correspond to the macrostate number from Barriers\\n(e.g. for macrostates 1, 2, 3 where 2 has been removed, -s 2\\nstarts in macrostate 3). To refer directly to Barriers'\\nmacrostates, use prefixes mon and dim (e.g. -s mon15 or -s dim1)\\nfor monomer or dimer macrostates, respectively. Phew!"
    ligand_concentration_mol: ":    Ligand concentration in molar =  mol / l = mol / dm^3 in the\\ncell [1e-3]"
    bonus_energy_binding: ":    Bonus energy for binding the ligand (>=0, in kcal/mol). With -M,\\nspecifying -B will re-compute the monomer<->dimer transition\\nmatrix, else the existing one is used. [9.59]"
    folding_rate_rna: ":       Folding rate of RNA in s^-1 (pre-exponential factor). [1e6]"
    dimerization_rate_factor: ":       Dimerization rate in (M s)^-1 (pre-exponential factor). [1.7e5]"
    _simulation_time: ":    Simulation time. [1e16]"
    force_run_exists: ":       Force run, even if a lock file exists. If a lock file is found\\nand -f is not given, the user is promted to confirm the run."
    args: ""
    sequence_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
    File out_file_containing_structures = "${in_file_containing_structures}"
  }
}