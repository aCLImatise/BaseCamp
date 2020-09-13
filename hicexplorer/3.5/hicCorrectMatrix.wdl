version 1.0

task HicCorrectMatrix {
  input {
    String? filter_threshold
  }
  command <<<
    hicCorrectMatrix \
      ~{if defined(filter_threshold) then ("--filterThreshold " +  '"' + filter_threshold + '"') else ""}
  >>>
  parameter_meta {
    filter_threshold: "<upper threshold> -o corrected_matrix"
  }
  output {
    File out_stdout = stdout()
  }
}