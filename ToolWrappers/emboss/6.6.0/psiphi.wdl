version 1.0

task Psiphi {
  input {
    Boolean? chain_number
    Int? start_residue_number
    Int? finish_residue_number
  }
  command <<<
    psiphi \
      ~{if (chain_number) then "-chainnumber" else ""} \
      ~{if defined(start_residue_number) then ("-startresiduenumber " +  '"' + start_residue_number + '"') else ""} \
      ~{if defined(finish_residue_number) then ("-finishresiduenumber " +  '"' + finish_residue_number + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chain_number: "integer    [1] Number of the chain for which torsion\\nangles should be calculated (Integer 1 or\\nmore)"
    start_residue_number: "[1] First residue in chain for which torsion\\nangles should be calculated (Integer 1 or\\nmore)"
    finish_residue_number: "[1] Last residue in chain for which torsion\\nangles should be calculated (1 = last\\nresidue) (Any integer value)"
  }
  output {
    File out_stdout = stdout()
  }
}