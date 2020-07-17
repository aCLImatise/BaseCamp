version 1.0

task CsbPrecision {
  input {
    String? pdb
    String? native
    String? chain
    String? top
    String? cpu
    String? rmsd
    String? output_directory_default
    Boolean? save_structures
    String library
  }
  command <<<
    csb-precision \
      ~{library} \
      ~{if defined(pdb) then ("--pdb " +  '"' + pdb + '"') else ""} \
      ~{if defined(native) then ("--native " +  '"' + native + '"') else ""} \
      ~{if defined(chain) then ("--chain " +  '"' + chain + '"') else ""} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(rmsd) then ("--rmsd " +  '"' + rmsd + '"') else ""} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{true="--save-structures" false="" save_structures}
  >>>
  parameter_meta {
    pdb: "the PDB database (a directory containing all PDB files)"
    native: "native structure of the target (PDB file)"
    chain: "chain identifier (if not specified, the first chain)"
    top: "read top N fragments per position (default=25)"
    cpu: "maximum degree of parallelism (default=8)"
    rmsd: "RMSD cutoff for precision and coverage (default=1.5)"
    output_directory_default: "output directory (default=.)"
    save_structures: "create a PDB file for each fragment, superimposed over the native (default=False)"
    library: "Fragment library file in Rosetta NNmake format"
  }
}