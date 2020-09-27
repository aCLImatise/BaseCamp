version 1.0

task ComputeFullMatrixpy {
  input {
    Int? frac_selected
    Array[String] in
  }
  command <<<
    compute_full_matrix_py \
      ~{if defined(frac_selected) then ("--frac_selected " +  '"' + frac_selected + '"') else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""}
  >>>
  parameter_meta {
    frac_selected: "Do not write peakgroup if selected in less than this"
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}