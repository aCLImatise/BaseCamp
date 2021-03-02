class: CommandLineTool
id: cpptraj.cwl
inputs:
- id: in_load_top_topology
  doc: ': * Load <Top0> as a topology file.'
  type: long?
  inputBinding:
    prefix: -p
- id: in_read_input_input
  doc: ': * Read input from file <Input0>.'
  type: long?
  inputBinding:
    prefix: -i
- id: in_read_trajectory_same
  doc: ": * Read from trajectory file <trajin>; same as input 'trajin <trajin>'."
  type: File?
  inputBinding:
    prefix: -y
- id: in_write_trajectory_file
  doc: ": * Write trajectory file <trajout>; same as input 'trajout <trajout>'."
  type: File?
  inputBinding:
    prefix: -x
- id: in_ya
  doc: ': * Input trajectory file arguments.'
  type: File?
  inputBinding:
    prefix: -ya
- id: in_x_a
  doc: ': * Output trajectory file arguments.'
  type: File?
  inputBinding:
    prefix: -xa
- id: in_read_reference_same
  doc: ": * Read <reference> as reference coordinates; same as input 'reference <reference>'."
  type: string?
  inputBinding:
    prefix: -c
- id: in_read_data_in
  doc: ": * Read data in from file <datain> ('readdata <datain>')."
  type: File?
  inputBinding:
    prefix: -d
- id: in_write_data_datain
  doc: ": Write data from <datain> as file <dataout> ('writedata <dataout>)."
  type: File?
  inputBinding:
    prefix: -w
- id: in_write_cpptraj_output
  doc: ': Write CPPTRAJ STDOUT output to file <output>.'
  type: File?
  inputBinding:
    prefix: -o
- id: in_defines
  doc: ': Print compiler defines and exit.'
  type: boolean?
  inputBinding:
    prefix: --defines
- id: in_debug
  doc: "<#>       : Set global debug level to <#>; same as input 'debug <#>'."
  type: boolean?
  inputBinding:
    prefix: -debug
- id: in_interactive
  doc: ': Force interactive mode.'
  type: boolean?
  inputBinding:
    prefix: --interactive
- id: in_log
  doc: ": Record commands to <logfile> (interactive mode only). Default is 'cpptraj.log'."
  type: File?
  inputBinding:
    prefix: --log
- id: in_tl
  doc: ': Print length of all input trajectories specified on the command line to
    STDOUT.'
  type: boolean?
  inputBinding:
    prefix: -tl
- id: in_ms
  doc: ': Print selected atom numbers to STDOUT.'
  type: string?
  inputBinding:
    prefix: -ms
- id: in_mr
  doc: ': Print selected residue numbers to STDOUT.'
  type: string?
  inputBinding:
    prefix: -mr
- id: in_mask
  doc: ': Print detailed atom selection to STDOUT.'
  type: string?
  inputBinding:
    prefix: --mask
- id: in_res_mask
  doc: ': Print detailed residue selection to STDOUT.'
  type: string?
  inputBinding:
    prefix: --resmask
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_x_a
  doc: ': * Output trajectory file arguments.'
  type: File?
  outputBinding:
    glob: $(inputs.in_x_a)
- id: out_write_cpptraj_output
  doc: ': Write CPPTRAJ STDOUT output to file <output>.'
  type: File?
  outputBinding:
    glob: $(inputs.in_write_cpptraj_output)
hints: []
cwlVersion: v1.1
baseCommand:
- cpptraj
