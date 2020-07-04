version 1.0

task Rbdock {
  input {
    String? input_ligand_sd
    String? output_file_names
    String? receptor_param
    String? docking_param
    String? number
    Boolean? proton_ate
    Boolean? de_proton_ate
    Boolean? all_hydrogens
    String? threshold
    Boolean? continue
    String? filter
    String? trace
    String? seed
    String? option_dot_dot_dot
  }
  command <<<
    rbdock \
      ~{option_dot_dot_dot} \
      ~{if defined(input_ligand_sd) then ("--input " +  '"' + input_ligand_sd + '"') else ""} \
      ~{if defined(output_file_names) then ("--output " +  '"' + output_file_names + '"') else ""} \
      ~{if defined(receptor_param) then ("--receptor-param " +  '"' + receptor_param + '"') else ""} \
      ~{if defined(docking_param) then ("--docking-param " +  '"' + docking_param + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{true="--protonate" false="" proton_ate} \
      ~{true="--deprotonate" false="" de_proton_ate} \
      ~{true="--all-hydrogens" false="" all_hydrogens} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{true="--continue" false="" continue} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(trace) then ("--trace " +  '"' + trace + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    input_ligand_sd: "input ligand SD file"
    output_file_names: "output file name(s) prefix"
    receptor_param: "receptor parameter file"
    docking_param: "docking protocol parameter file"
    number: "number of runs per ligand (0 = unlimited) (default: 0)"
    proton_ate: "protonate all neutral amines, guanidines, imidazoles"
    de_proton_ate: "deprotonate all carboxylic, sulphur and phosphorous acid groups"
    all_hydrogens: "read all hydrogens present instead of only polar hydrogens"
    threshold: "score threshold"
    continue: "continue if score threshold is met instead of terminating ligand"
    filter: "filter file name"
    trace: "controls output level for debugging (0 = minimal, >0 = more verbose) (default: 0)"
    seed: "random number seed to use instead of std::random_device"
    option_dot_dot_dot: ""
  }
}