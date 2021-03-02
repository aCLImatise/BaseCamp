version 1.0

task UnitCell {
  input {
    Boolean? structure_reassemble_pdb
    Boolean? output_structure_pdb
  }
  command <<<
    UnitCell \
      ~{if (structure_reassemble_pdb) then "-p" else ""} \
      ~{if (output_structure_pdb) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    structure_reassemble_pdb: ": the structure to reassemble (PDB format)"
    output_structure_pdb: ": the output structure (PDB format)"
  }
  output {
    File out_stdout = stdout()
  }
}