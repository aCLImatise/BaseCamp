version 1.0

task BiomHead {
  input {
    File? input_fp
    File? output_fp
    Int? n_obs
    Int? n_samp
  }
  command <<<
    biom head \
      ~{if defined(input_fp) then ("--input-fp " +  '"' + input_fp + '"') else ""} \
      ~{if defined(output_fp) then ("--output-fp " +  '"' + output_fp + '"') else ""} \
      ~{if defined(n_obs) then ("--n-obs " +  '"' + n_obs + '"') else ""} \
      ~{if defined(n_samp) then ("--n-samp " +  '"' + n_samp + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fp: "The input BIOM table  [required]"
    output_fp: "An output file-path"
    n_obs: "The number of observations to show"
    n_samp: "The number of samples to show"
  }
  output {
    File out_stdout = stdout()
    File out_output_fp = "${in_output_fp}"
  }
}