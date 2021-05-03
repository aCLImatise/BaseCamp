version 1.0

task AlevinfryInferFLAGS {
  input {
    String? eq_labels
    String? count_mat
  }
  command <<<
    alevin_fry infer FLAGS \
      ~{if defined(eq_labels) then ("--eq-labels " +  '"' + eq_labels + '"') else ""} \
      ~{if defined(count_mat) then ("--count-mat " +  '"' + count_mat + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/alevin-fry:0.2.0--h7d875b9_0"
  }
  parameter_meta {
    eq_labels: ""
    count_mat: ""
  }
  output {
    File out_stdout = stdout()
  }
}