version 1.0

task NdscoreInfasta {
  input {
    Int? loop_penalty
  }
  command <<<
    _ndscore in_fasta \
      ~{if defined(loop_penalty) then ("--loop-penalty " +  '"' + loop_penalty + '"') else ""}
  >>>
  parameter_meta {
    loop_penalty: ",2,3,4,5,6,7,8,9,10,11"
  }
  output {
    File out_stdout = stdout()
  }
}