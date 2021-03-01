class: CommandLineTool
id: memembed.cwl
inputs:
- id: in_output_pdb_file
  doc: Output pdb file. Default <input pdb file>_EMBED.pdb
  type: File?
  inputBinding:
    prefix: -o
- id: in_comma_separated_list
  doc: Comma separated list of transmembrane chains. Default all
  type: string?
  inputBinding:
    prefix: -c
- id: in_output_chains_regardless
  doc: Output all chains regardless of chains passed by -c parameter.
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_use_alternative_file
  doc: Use alternative potential file.
  type: File?
  inputBinding:
    prefix: -m
- id: in_comma_seperated_list_helix
  doc: Comma seperated list of helix boundaries used to calculate helix tilt angles.
  type: string?
  inputBinding:
    prefix: -t
- id: in_comma_seperated_list_skip
  doc: Comma seperated list of residues to skip.
  type: string?
  inputBinding:
    prefix: -f
- id: in_chain_topology_refers
  doc: Chain that topology refers to. Default 'A'
  type: string?
  inputBinding:
    prefix: -r
- id: in_maximum_cbcb_distance
  doc: Maximum Cb-Cb distance to allow.
  type: long?
  inputBinding:
    prefix: -v
- id: in_threads_to_use
  doc: Threads to use.
  type: long?
  inputBinding:
    prefix: -a
- id: in_search_type_algorithm
  doc: Search type. 0 = Genetic algorithm, 1 = Grid, 2 = Direct, 3 = GA repeated 5
    times. Default 0.
  type: long?
  inputBinding:
    prefix: -s
- id: in_optimise_membrane_thickness
  doc: Optimise membrane thickness. 0 = Do not optimise, 1 = After orientation, 2
    = Do not orientate. Default 0.
  type: long?
  inputBinding:
    prefix: -q
- id: in_location_nterminal_first
  doc: Location of N-terminal (first residue of first chain).
  type: string?
  inputBinding:
    prefix: -n
- id: in_target_is_betabarrel
  doc: Target is a beta-barrel.
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_force_target_span
  doc: Force target to span membrane.
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_draw_lines_representing
  doc: Draw lines representing polar head groups.
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_just_compute_energy
  doc: Just compute energy.
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_just_compute_helix
  doc: Just compute helix tilt angles.
  type: boolean?
  inputBinding:
    prefix: -z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- memembed
