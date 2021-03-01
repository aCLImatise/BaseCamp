version 1.0

task Rbdock {
  input {
    File? input_ligand_sd
    File? output_file_names
    File? receptor_param
    File? docking_param
    Int? number
    Boolean? proton_ate
    Boolean? all_hydrogens
    Boolean? continue
    File? filter
    Int? trace
    Int? seed
    Boolean? t
    Boolean? d
    String imidazoles
    String hydrogens
  }
  command <<<
    rbdock \
      ~{imidazoles} \
      ~{hydrogens} \
      ~{if defined(input_ligand_sd) then ("--input " +  '"' + input_ligand_sd + '"') else ""} \
      ~{if defined(output_file_names) then ("--output " +  '"' + output_file_names + '"') else ""} \
      ~{if defined(receptor_param) then ("--receptor-param " +  '"' + receptor_param + '"') else ""} \
      ~{if defined(docking_param) then ("--docking-param " +  '"' + docking_param + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if (proton_ate) then "--protonate" else ""} \
      ~{if (all_hydrogens) then "--all-hydrogens" else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(trace) then ("--trace " +  '"' + trace + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (t) then "-t" else ""} \
      ~{if (d) then "-D" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_ligand_sd: "input ligand SD file"
    output_file_names: "output file name(s) prefix"
    receptor_param: "receptor parameter file"
    docking_param: "docking protocol parameter file"
    number: "number of runs per ligand (0 = unlimited)\\n(default: 0)"
    proton_ate: "protonate all neutral amines, guanidines,"
    all_hydrogens: "read all hydrogens present instead of only polar"
    continue: "continue if score threshold is met instead of\\nterminating ligand"
    filter: "filter file name"
    trace: "controls output level for debugging (0 = minimal,\\n>0 = more verbose) (default: 0)"
    seed: "random number seed to use instead of\\nstd::random_device"
    t: ""
    d: ""
    imidazoles: "-D, --deprotonate         deprotonate all carboxylic, sulphur and"
    hydrogens: "-t, --threshold arg       score threshold"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_names = "${in_output_file_names}"
  }
}