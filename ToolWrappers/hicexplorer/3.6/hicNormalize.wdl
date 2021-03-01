version 1.0

task HicNormalize {
  input {
    Array[String] matrices
    String? normalize
    File? out_filename
    Int? multiplicative_value
    Float? set_to_zero_threshold
  }
  command <<<
    hicNormalize \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(normalize) then ("--normalize " +  '"' + normalize + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(multiplicative_value) then ("--multiplicativeValue " +  '"' + multiplicative_value + '"') else ""} \
      ~{if defined(set_to_zero_threshold) then ("--setToZeroThreshold " +  '"' + set_to_zero_threshold + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hicexplorer:3.6--py_0"
  }
  parameter_meta {
    matrices: "The matrix (or multiple matrices) to get information\\nabout. HiCExplorer supports the following file\\nformats: h5 (native HiCExplorer format) and cool."
    normalize: "Normalize to a) 0 to 1 range, b) all matrices to the\\nlowest read count of the given matrices (Default:\\nsmallest)."
    out_filename: "Output file name for the Hi-C matrix."
    multiplicative_value: "Value to multiply if --normalize is set to\\nmultiplicative. (Default: 1)."
    set_to_zero_threshold: "A threshold to set all values after normalization to 0\\nif smaller this threshold. Default value is 0 i.e.\\nthere is no effect.It is recommended to set it for the\\nnormalize mode \\\"smallest\\\" to 1.0. This parameter will\\ninfluence the sparsity of the matrix by removing many\\nvalues close to 0 in smallest normalization mode."
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}