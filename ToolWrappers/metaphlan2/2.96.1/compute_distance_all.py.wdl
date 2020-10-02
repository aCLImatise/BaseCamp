version 1.0

task ComputeDistanceAllpy {
  input {
    String? nprocs
    Array[String] ifn_alignments
  }
  command <<<
    compute_distance_all_py \
      ~{if defined(nprocs) then ("--nprocs " +  '"' + nprocs + '"') else ""} \
      ~{if defined(ifn_alignments) then ("--ifn_alignments " +  '"' + ifn_alignments + '"') else ""}
  >>>
  parameter_meta {
    nprocs: ""
    ifn_alignments: ""
  }
  output {
    File out_stdout = stdout()
  }
}