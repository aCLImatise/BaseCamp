version 1.0

task OptimizePrimers.py {
  input {
    String? hits_fp
  }
  command <<<
    optimize_primers.py \
      ~{if defined(hits_fp) then ("--hits_fp " +  '"' + hits_fp + '"') else ""}
  >>>
  parameter_meta {
    hits_fp: "Target primer hits file to generate base frequencies with. [REQUIRED]"
  }
}