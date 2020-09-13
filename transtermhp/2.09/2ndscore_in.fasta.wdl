version 1.0

task NdscoreInfasta {
  input {
    Boolean? gc
    Int? max_loop
    Int? loop_penalty
  }
  command <<<
    _ndscore in_fasta \
      ~{if (gc) then "--gc" else ""} \
      ~{if defined(max_loop) then ("--max-loop " +  '"' + max_loop + '"') else ""} \
      ~{if defined(loop_penalty) then ("--loop-penalty " +  '"' + loop_penalty + '"') else ""}
  >>>
  parameter_meta {
    gc: "=-2.3 --au=-0.9 --gu=1.3 --mm=3.5 --gap=6"
    max_loop: ""
    loop_penalty: ",2,3,4,5,6,7,8,9,10,11"
  }
  output {
    File out_stdout = stdout()
  }
}