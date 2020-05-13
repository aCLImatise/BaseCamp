version 1.0

task OptimizePrimers.py {
  input {
    String hitsHitsFp
  }
  command <<<
    optimize_primers.py \
      ~{if defined(hitsHitsFp) then ("--hits_fp " +  '"' + hitsHitsFp + '"') else ""}
  >>>
}