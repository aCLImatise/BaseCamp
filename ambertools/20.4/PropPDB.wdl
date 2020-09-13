version 1.0

task PropPDB {
  input {
    Boolean? structure_reassemble_pdb
    Boolean? output_structure_pdb
    Boolean? ix
    Boolean? iy
    Boolean? iz
  }
  command <<<
    PropPDB \
      ~{if (structure_reassemble_pdb) then "-p" else ""} \
      ~{if (output_structure_pdb) then "-o" else ""} \
      ~{if (ix) then "-ix" else ""} \
      ~{if (iy) then "-iy" else ""} \
      ~{if (iz) then "-iz" else ""}
  >>>
  parameter_meta {
    structure_reassemble_pdb: ": the structure to reassemble (PDB format)"
    output_structure_pdb: ": the output structure (PDB format)"
    ix: ": number of replicas along _X_ vector"
    iy: ": number of replicas along _Y_ vector"
    iz: ": number of replicas along _Z_ vector"
  }
  output {
    File out_stdout = stdout()
  }
}