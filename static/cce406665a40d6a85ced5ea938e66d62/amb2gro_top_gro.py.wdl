version 1.0

task Amb2groTopGropy {
  input {
    String? g
    File? prmtop_file
    File? inpcrd_file
    File? gromacs_top_file
  }
  command <<<
    amb2gro_top_gro_py \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(prmtop_file) then ("-p " +  '"' + prmtop_file + '"') else ""} \
      ~{if defined(inpcrd_file) then ("-c " +  '"' + inpcrd_file + '"') else ""} \
      ~{if defined(gromacs_top_file) then ("-t " +  '"' + gromacs_top_file + '"') else ""}
  >>>
  parameter_meta {
    g: ""
    prmtop_file: "Prmtop file"
    inpcrd_file: "Inpcrd file"
    gromacs_top_file: "GROMACS top file"
  }
  output {
    File out_stdout = stdout()
  }
}