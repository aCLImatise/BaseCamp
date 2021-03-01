version 1.0

task Ceinutilpy {
  input {
    Boolean? debug
    File? output_file_defaults
    File? topology_file_used
    Int? i_gb
    Float? int_diel
    Boolean? res_names
    Boolean? not_res_names
    Boolean? res_nums
    Boolean? not_res_nums
    File? mineo
    File? max_eo
    Boolean? states
    String? system
    Boolean? describe
    Boolean? list
    String simulation
  }
  command <<<
    ceinutil_py \
      ~{simulation} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(output_file_defaults) then ("--output " +  '"' + output_file_defaults + '"') else ""} \
      ~{if defined(topology_file_used) then ("-p " +  '"' + topology_file_used + '"') else ""} \
      ~{if defined(i_gb) then ("-igb " +  '"' + i_gb + '"') else ""} \
      ~{if defined(int_diel) then ("-intdiel " +  '"' + int_diel + '"') else ""} \
      ~{if (res_names) then "-resnames" else ""} \
      ~{if (not_res_names) then "-notresnames" else ""} \
      ~{if (res_nums) then "-resnums" else ""} \
      ~{if (not_res_nums) then "-notresnums" else ""} \
      ~{if defined(mineo) then ("-mineo " +  '"' + mineo + '"') else ""} \
      ~{if defined(max_eo) then ("-maxeo " +  '"' + max_eo + '"') else ""} \
      ~{if (states) then "-states" else ""} \
      ~{if defined(system) then ("-system " +  '"' + system + '"') else ""} \
      ~{if (describe) then "--describe" else ""} \
      ~{if (list) then "--list" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Enable verbose tracebacks to debug this program"
    output_file_defaults: "Output file. Defaults to standard output"
    topology_file_used: "Topology file to be used in constant Redox Potential"
    i_gb: "Generalized Born model which you intend to use to\\nevaluate dynamics (or protonation state swaps).\\nDefault is 2."
    int_diel: "Internal dielectric constant to use in the evaluation\\nof the GB potential. Default 1.0."
    res_names: "[RES [RES ...]]\\nResidue names to include in CEIN file"
    not_res_names: "[RES [RES ...]]\\nResidue names to exclude from CEIN file"
    res_nums: "[NUM [NUM ...]]\\nResidue numbers to include in CEIN file"
    not_res_nums: "[NUM [NUM ...]]\\nResidue numbers to exclude from CEIN file"
    mineo: "Minimum reference standard Redox Potential (given in\\nVolts) to include in CEIN file"
    max_eo: "Maximum reference standard Redox Potential (given in\\nVolts) to include in CEIN file"
    states: "[NUM [NUM ...]]\\nList of default states to assign to titratable\\nresidues"
    system: "Name of system to titrate. No effect on simulation."
    describe: "[RESNAME [RESNAME ...]]\\nPrint out the details of given residues"
    list: "List all titratable residues"
    simulation: "Simulation Options:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_defaults = "${in_output_file_defaults}"
  }
}