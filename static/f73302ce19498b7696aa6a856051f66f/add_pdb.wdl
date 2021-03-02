version 1.0

task AddPdb {
  input {
    Boolean? guess
    String prm_top
    String pdb
  }
  command <<<
    add_pdb \
      ~{prm_top} \
      ~{pdb} \
      ~{if (guess) then "-guess" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    guess: ": Guess atomic elements when absent from the PDB file.\\n(default assumes proper element-aligned names)"
    prm_top: ": amber topology"
    pdb: ": matching PDB file"
  }
  output {
    File out_stdout = stdout()
  }
}