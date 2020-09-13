version 1.0

task ComputeDistanceAllpy {
  input {
    Array[String] ifn_alignments
    String? nprocs
    Boolean? count_gaps
  }
  command <<<
    compute_distance_all_py \
      ~{if defined(ifn_alignments) then ("--ifn_alignments " +  '"' + ifn_alignments + '"') else ""} \
      ~{if defined(nprocs) then ("--nprocs " +  '"' + nprocs + '"') else ""} \
      ~{if (count_gaps) then "--count_gaps" else ""}
  >>>
  parameter_meta {
    ifn_alignments: ""
    nprocs: ""
    count_gaps: ""
  }
  output {
    File out_stdout = stdout()
  }
}