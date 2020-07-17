version 1.0

task HicNormalize {
  input {
    Array[String] matrices
    String? normalize
    Array[File] out_filename
    String? multiplicative_value
    String? set_to_zero_threshold
  }
  command <<<
    hicNormalize \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(normalize) then ("--normalize " +  '"' + normalize + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(multiplicative_value) then ("--multiplicativeValue " +  '"' + multiplicative_value + '"') else ""} \
      ~{if defined(set_to_zero_threshold) then ("--setToZeroThreshold " +  '"' + set_to_zero_threshold + '"') else ""}
  >>>
  parameter_meta {
    matrices: "The matrix (or multiple matrices) to get information about. HiCExplorer supports the following file formats: h5 (native HiCExplorer format) and cool."
    normalize: "Normalize to a) 0 to 1 range, b) all matrices to the lowest read count of the given matrices."
    out_filename: "Output file name for the Hi-C matrix."
    multiplicative_value: "show this help message and exit"
    set_to_zero_threshold: "A threshold to set all values after normalization to 0 if smaller this threshold. Default value is 0 i.e. there is no effect.It is recommended to set it for the normalize mode \"smallest\" to 1.0. This parameter will influence the sparsity of the matrix by removing many values close to 0 in smallest normalization mode."
  }
}