version 1.0

task Cpptraj {
  input {
    Int? load_top_topology
    Int? read_input_input
    File? read_trajectory_same
    File? write_trajectory_file
    File? ya
    File? x_a
    String? read_reference_same
    File? read_data_in
    File? write_data_datain
    File? write_cpptraj_output
    Boolean? defines
    Boolean? debug
    Boolean? interactive
    File? log
    Boolean? tl
    String? ms
    String? mr
    String? mask
    String? res_mask
  }
  command <<<
    cpptraj \
      ~{if defined(load_top_topology) then ("-p " +  '"' + load_top_topology + '"') else ""} \
      ~{if defined(read_input_input) then ("-i " +  '"' + read_input_input + '"') else ""} \
      ~{if defined(read_trajectory_same) then ("-y " +  '"' + read_trajectory_same + '"') else ""} \
      ~{if defined(write_trajectory_file) then ("-x " +  '"' + write_trajectory_file + '"') else ""} \
      ~{if defined(ya) then ("-ya " +  '"' + ya + '"') else ""} \
      ~{if defined(x_a) then ("-xa " +  '"' + x_a + '"') else ""} \
      ~{if defined(read_reference_same) then ("-c " +  '"' + read_reference_same + '"') else ""} \
      ~{if defined(read_data_in) then ("-d " +  '"' + read_data_in + '"') else ""} \
      ~{if defined(write_data_datain) then ("-w " +  '"' + write_data_datain + '"') else ""} \
      ~{if defined(write_cpptraj_output) then ("-o " +  '"' + write_cpptraj_output + '"') else ""} \
      ~{if (defines) then "--defines" else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if (interactive) then "--interactive" else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (tl) then "-tl" else ""} \
      ~{if defined(ms) then ("-ms " +  '"' + ms + '"') else ""} \
      ~{if defined(mr) then ("-mr " +  '"' + mr + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(res_mask) then ("--resmask " +  '"' + res_mask + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    load_top_topology: ": * Load <Top0> as a topology file."
    read_input_input: ": * Read input from file <Input0>."
    read_trajectory_same: ": * Read from trajectory file <trajin>; same as input 'trajin <trajin>'."
    write_trajectory_file: ": * Write trajectory file <trajout>; same as input 'trajout <trajout>'."
    ya: ": * Input trajectory file arguments."
    x_a: ": * Output trajectory file arguments."
    read_reference_same: ": * Read <reference> as reference coordinates; same as input 'reference <reference>'."
    read_data_in: ": * Read data in from file <datain> ('readdata <datain>')."
    write_data_datain: ": Write data from <datain> as file <dataout> ('writedata <dataout>)."
    write_cpptraj_output: ": Write CPPTRAJ STDOUT output to file <output>."
    defines: ": Print compiler defines and exit."
    debug: "<#>       : Set global debug level to <#>; same as input 'debug <#>'."
    interactive: ": Force interactive mode."
    log: ": Record commands to <logfile> (interactive mode only). Default is 'cpptraj.log'."
    tl: ": Print length of all input trajectories specified on the command line to STDOUT."
    ms: ": Print selected atom numbers to STDOUT."
    mr: ": Print selected residue numbers to STDOUT."
    mask: ": Print detailed atom selection to STDOUT."
    res_mask: ": Print detailed residue selection to STDOUT."
  }
  output {
    File out_stdout = stdout()
    File out_x_a = "${in_x_a}"
    File out_write_cpptraj_output = "${in_write_cpptraj_output}"
  }
}