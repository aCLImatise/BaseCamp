version 1.0

task ComputeDistancepy {
  input {
    Boolean? of_n_prefix
    String? ifn_alignment
  }
  command <<<
    compute_distance_py \
      ~{if (of_n_prefix) then "--ofn_prefix" else ""} \
      ~{if defined(ifn_alignment) then ("--ifn_alignment " +  '"' + ifn_alignment + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    of_n_prefix: ""
    ifn_alignment: ""
  }
  output {
    File out_stdout = stdout()
  }
}