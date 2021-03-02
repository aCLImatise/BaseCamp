version 1.0

task Cpinutilpy {
  input {
    Boolean? debug
    File? old_format
    File? output_file_defaults
    File? output_prm_top
    File? topology_file_used
    Int? i_gb
    Float? int_diel
    Boolean? res_names
    Boolean? not_res_names
    Boolean? res_nums
    Boolean? not_res_nums
    File? min_pka
    File? max_pka
    Boolean? states
    String? system
    Boolean? describe
    Boolean? list
  }
  command <<<
    cpinutil_py \
      ~{if (debug) then "--debug" else ""} \
      ~{if (old_format) then "--old-format" else ""} \
      ~{if defined(output_file_defaults) then ("--output " +  '"' + output_file_defaults + '"') else ""} \
      ~{if defined(output_prm_top) then ("--output-prmtop " +  '"' + output_prm_top + '"') else ""} \
      ~{if defined(topology_file_used) then ("-p " +  '"' + topology_file_used + '"') else ""} \
      ~{if defined(i_gb) then ("-igb " +  '"' + i_gb + '"') else ""} \
      ~{if defined(int_diel) then ("-intdiel " +  '"' + int_diel + '"') else ""} \
      ~{if (res_names) then "-resnames" else ""} \
      ~{if (not_res_names) then "-notresnames" else ""} \
      ~{if (res_nums) then "-resnums" else ""} \
      ~{if (not_res_nums) then "-notresnums" else ""} \
      ~{if defined(min_pka) then ("-minpKa " +  '"' + min_pka + '"') else ""} \
      ~{if defined(max_pka) then ("-maxpKa " +  '"' + max_pka + '"') else ""} \
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
    old_format: "Print output file in a format compatible with Amber 16\\nand older versions"
    output_file_defaults: "Output file. Defaults to standard output"
    output_prm_top: "For explicit solvent simulations, a custom set of\\nradii are necessary to obtain reasonable results for\\ncarboxylate pKas (e.g., AS4 and GL4 residues). If\\nspecified, this file will be the prmtop compatible\\nwith the reference energies in the printed cpin file."
    topology_file_used: "Topology file to be used in constant pH simulation"
    i_gb: "Generalized Born model which you intend to use to\\nevaluate dynamics (or protonation state swaps).\\nDefault is 2."
    int_diel: "Internal dielectric constant to use in the evaluation\\nof the GB potential. Default 1.0."
    res_names: "[RES [RES ...]]\\nResidue names to include in CPIN file"
    not_res_names: "[RES [RES ...]]\\nResidue names to exclude from CPIN file"
    res_nums: "[NUM [NUM ...]]\\nResidue numbers to include in CPIN file"
    not_res_nums: "[NUM [NUM ...]]\\nResidue numbers to exclude from CPIN file"
    min_pka: "Minimum reference pKa to include in CPIN file"
    max_pka: "Maximum reference pKa to include in CPIN file"
    states: "[NUM [NUM ...]]\\nList of default states to assign to titratable\\nresidues"
    system: "Name of system to titrate. No effect on simulation."
    describe: "[RESNAME [RESNAME ...]]\\nPrint out the details of given residues"
    list: "List all titratable residues"
  }
  output {
    File out_stdout = stdout()
    File out_old_format = "${in_old_format}"
    File out_output_file_defaults = "${in_output_file_defaults}"
  }
}