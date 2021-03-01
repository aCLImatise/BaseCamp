version 1.0

task ComputeFullMatrixpy {
  input {
    Array[String] in
    String? out_matrix
    Int? frac_selected
    File? file_format
    String? output_method
    String? read_method
    String? aligner_m_score_threshold
  }
  command <<<
    compute_full_matrix_py \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out_matrix) then ("--out_matrix " +  '"' + out_matrix + '"') else ""} \
      ~{if defined(frac_selected) then ("--frac_selected " +  '"' + frac_selected + '"') else ""} \
      ~{if defined(file_format) then ("--file_format " +  '"' + file_format + '"') else ""} \
      ~{if defined(output_method) then ("--output_method " +  '"' + output_method + '"') else ""} \
      ~{if defined(read_method) then ("--readmethod " +  '"' + read_method + '"') else ""} \
      ~{if defined(aligner_m_score_threshold) then ("--aligner_mscore_threshold " +  '"' + aligner_m_score_threshold + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "A list of mProphet output files containing all\\npeakgroups (use quotes around the filenames)"
    out_matrix: "Matrix containing one peak group per (supports .csv,\\n.tsv or .xls)"
    frac_selected: "Do not write peakgroup if selected in less than this\\nfraction of runs (range 0 to 1)"
    file_format: "Which input file format is used (openswath or\\npeakview)"
    output_method: "Which columns are written besides Intensity (none, RT,\\nscore or full)"
    read_method: "Read full or minimal transition groups (minimal,full)"
    aligner_m_score_threshold: "cutoff used at alignment, for coloring realigned\\nvalues in blue\\n"
  }
  output {
    File out_stdout = stdout()
  }
}