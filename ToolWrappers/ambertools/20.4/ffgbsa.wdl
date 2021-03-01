version 1.0

task Ffgbsa {
  input {
    String pdb
    String prm
    String gb_flag
    String sa_flag
  }
  command <<<
    ffgbsa \
      ~{pdb} \
      ~{prm} \
      ~{gb_flag} \
      ~{sa_flag}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pdb: "= PDB file name"
    prm: "= parameter-topology file name"
    gb_flag: "= integer (1, 2, 5, 7 or 8 for GB ON, else OFF)"
    sa_flag: "= integer (0 for SA OFF, 1 for SA ON)"
  }
  output {
    File out_stdout = stdout()
  }
}