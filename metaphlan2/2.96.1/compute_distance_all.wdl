version 1.0

task ComputeDistanceAll.py {
  input {
    Array[String] ifn_alignments
    String? nprocs
  }
  command <<<
    compute_distance_all.py \
      ~{if defined(ifn_alignments) then ("--ifn_alignments " +  '"' + ifn_alignments + '"') else ""} \
      ~{if defined(nprocs) then ("--nprocs " +  '"' + nprocs + '"') else ""}
  >>>
  parameter_meta {
    ifn_alignments: ""
    nprocs: ""
  }
}