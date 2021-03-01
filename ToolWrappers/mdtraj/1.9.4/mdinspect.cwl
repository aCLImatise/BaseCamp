class: CommandLineTool
id: mdinspect.cwl
inputs:
- id: in_topology
  doc: Topology for the system (.prmtop/.pdb)
  type: string?
  inputBinding:
    prefix: --topology
- id: in_bond_low
  doc: "Minimum fraction of sum of covalent radii for bonded\natoms. Default=0.4"
  type: double?
  inputBinding:
    prefix: --bond-low
- id: in_bond_high
  doc: "Maximum fraction of sum of covalent radii for bonded\natoms. Default=1.2"
  type: double?
  inputBinding:
    prefix: --bond-high
- id: in_rmsd_tolerance
  doc: "Maximum tolerance for percent change in RMSD.\nDefault=100.0\n"
  type: double?
  inputBinding:
    prefix: --rmsd-tolerance
- id: in_files
  doc: Input trajectory file(s), in any supported format.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mdtraj:1.9.4
cwlVersion: v1.1
baseCommand:
- mdinspect
