class: CommandLineTool
id: pulchra.cwl
inputs:
- id: in_verbose_output_default
  doc: ': verbose output (default: off)'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_center_chain_default
  doc: ': center chain (default: off)'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_timeseed_generator_default
  doc: ': time-seed random number generator (default: off)'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_use_pdbsg_input
  doc: ': use PDBSG as an input format (CA=C-alpha, SC or CM=side chain c.m.)'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_skip_positions_default
  doc: ': skip C-alpha positions optimization (default: on)'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_detect_cisprolins_default
  doc: ': detect cis-prolins (default: off)'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_start_random_chain
  doc: ': start from a random chain (default: off)'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_read_initial_coordinates
  doc: ': read the initial C-alpha coordinates from a PDB file'
  type: File?
  inputBinding:
    prefix: -i
- id: in_save_optimization_trajectory
  doc: ': save chain optimization trajectory to file <pdb_file.pdb.trajectory>'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_maximum_shift_restraint
  doc: ': maximum shift from the restraint coordinates (default: 0.5A)'
  type: double?
  inputBinding:
    prefix: -u
- id: in_rearrange_backbone_atoms
  doc: ': rearrange backbone atoms (C, O are output after side chain) (default: off)'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_preserve_initial_coordinates
  doc: ": preserve initial coordinates (default: off, implies '-c' on and '-n' off)"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_skip_reconstruction_default
  doc: ': skip backbone reconstruction (default: on)'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_optimize_bonds_pattern
  doc: ': optimize backbone hydrogen bonds pattern (default: off)'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_skip_side_chains
  doc: ': skip side chains reconstruction (default: on)'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_attempt_excluded_default
  doc: ": don't attempt to fix excluded volume conflicts (default: on)"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_check_acid_default
  doc: ": don't check amino acid chirality (default: on)"
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_pdb_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pulchra:3.06--h516909a_0
cwlVersion: v1.1
baseCommand:
- pulchra
