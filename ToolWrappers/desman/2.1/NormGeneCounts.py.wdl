version 1.0

task NormGeneCountspy {
  input {
    Float? frac_thresh
    File? output_file
  }
  command <<<
    NormGeneCounts_py \
      ~{if defined(frac_thresh) then ("--frac_thresh " +  '"' + frac_thresh + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    frac_thresh: "threshold for assigning gene to strain as fraction of\\nreads deriving from it, defaults to 0.01"
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}