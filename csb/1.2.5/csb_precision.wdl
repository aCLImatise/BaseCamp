version 1.0

task Csbprecision {
  input {
    Directory? pdb
    File? native
    String? chain
    Int? top
    Int? cpu
    Float? rmsd
    Directory? output_directory_default
    Boolean? save_structures
  }
  command <<<
    csb_precision \
      ~{if defined(pdb) then ("--pdb " +  '"' + pdb + '"') else ""} \
      ~{if defined(native) then ("--native " +  '"' + native + '"') else ""} \
      ~{if defined(chain) then ("--chain " +  '"' + chain + '"') else ""} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(rmsd) then ("--rmsd " +  '"' + rmsd + '"') else ""} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if (save_structures) then "--save-structures" else ""}
  >>>
  parameter_meta {
    pdb: "the PDB database (a directory containing all PDB\\nfiles)"
    native: "native structure of the target (PDB file)"
    chain: "chain identifier (if not specified, the first chain)"
    top: "read top N fragments per position (default=25)"
    cpu: "maximum degree of parallelism (default=8)"
    rmsd: "RMSD cutoff for precision and coverage (default=1.5)"
    output_directory_default: "output directory (default=.)"
    save_structures: "create a PDB file for each fragment, superimposed over\\nthe native (default=False)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}