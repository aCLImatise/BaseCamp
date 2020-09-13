version 1.0

task ComputeDistancepy {
  input {
    String? ifn_alignment
    String? of_n_prefix
    Boolean? count_gaps
    Boolean? overwrite
  }
  command <<<
    compute_distance_py \
      ~{if defined(ifn_alignment) then ("--ifn_alignment " +  '"' + ifn_alignment + '"') else ""} \
      ~{if defined(of_n_prefix) then ("--ofn_prefix " +  '"' + of_n_prefix + '"') else ""} \
      ~{if (count_gaps) then "--count_gaps" else ""} \
      ~{if (overwrite) then "--overwrite" else ""}
  >>>
  parameter_meta {
    ifn_alignment: ""
    of_n_prefix: ""
    count_gaps: ""
    overwrite: ""
  }
  output {
    File out_stdout = stdout()
  }
}