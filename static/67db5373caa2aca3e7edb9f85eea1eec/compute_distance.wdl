version 1.0

task ComputeDistance.py {
  input {
    String? ifn_alignment
    Boolean? of_n_prefix
  }
  command <<<
    compute_distance.py \
      ~{if defined(ifn_alignment) then ("--ifn_alignment " +  '"' + ifn_alignment + '"') else ""} \
      ~{true="--ofn_prefix" false="" of_n_prefix}
  >>>
  parameter_meta {
    ifn_alignment: ""
    of_n_prefix: ""
  }
}