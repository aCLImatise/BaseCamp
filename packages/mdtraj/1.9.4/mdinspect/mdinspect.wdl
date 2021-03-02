version 1.0

task Mdinspect {
  input {
    String? topology
    Float? bond_low
    Float? bond_high
    Float? rmsd_tolerance
    String files
  }
  command <<<
    mdinspect \
      ~{files} \
      ~{if defined(topology) then ("--topology " +  '"' + topology + '"') else ""} \
      ~{if defined(bond_low) then ("--bond-low " +  '"' + bond_low + '"') else ""} \
      ~{if defined(bond_high) then ("--bond-high " +  '"' + bond_high + '"') else ""} \
      ~{if defined(rmsd_tolerance) then ("--rmsd-tolerance " +  '"' + rmsd_tolerance + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mdtraj:1.9.4"
  }
  parameter_meta {
    topology: "Topology for the system (.prmtop/.pdb)"
    bond_low: "Minimum fraction of sum of covalent radii for bonded\\natoms. Default=0.4"
    bond_high: "Maximum fraction of sum of covalent radii for bonded\\natoms. Default=1.2"
    rmsd_tolerance: "Maximum tolerance for percent change in RMSD.\\nDefault=100.0\\n"
    files: "Input trajectory file(s), in any supported format."
  }
  output {
    File out_stdout = stdout()
  }
}