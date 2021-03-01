version 1.0

task MglexcliBincompare {
  input {
    Boolean? posterior_ratio
    File? data
    File? weight
    Boolean? var_3
    Boolean? var_4
    Float? beta
    Float? prefilter_thresh
    Float? edge_thresh
    Boolean? v
    File? subset_two
    File? subset_one
    String bin_compare
  }
  command <<<
    mglex_cli bincompare \
      ~{bin_compare} \
      ~{if (posterior_ratio) then "--posterior-ratio" else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(weight) then ("--weight " +  '"' + weight + '"') else ""} \
      ~{if (var_3) then "-s" else ""} \
      ~{if (var_4) then "-S" else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(prefilter_thresh) then ("--prefilter-thresh " +  '"' + prefilter_thresh + '"') else ""} \
      ~{if defined(edge_thresh) then ("--edge-thresh " +  '"' + edge_thresh + '"') else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if defined(subset_two) then ("--subset-2 " +  '"' + subset_two + '"') else ""} \
      ~{if defined(subset_one) then ("--subset-1 " +  '"' + subset_one + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    posterior_ratio: "Weigh sequences by (subset) bin posterior [default: False]"
    data: "Likelihood matrix [standard input]"
    weight: "Optional weights (sequence length) file [None]"
    var_3: "<file, --subset-1 <file>          Use subset of column indices (1-based) [None]"
    var_4: "<file, --subset-2 <file>          Use subset of column indices (1-based) [None]"
    beta: "Beta correction factor (e.g. determined via MSE evaluation) [default: 1.0]"
    prefilter_thresh: "Contig overlap similarity used to avoid likelihood calculations [default: 0.5]"
    edge_thresh: "Only distances <= threshold are reported; use \\\"inf\\\" to show all [default: 30]"
    v: ""
    subset_two: ""
    subset_one: ""
    bin_compare: "[--weight <file> --data <file> --subset-1 <file> --subset-2 <file> --beta <float> --posterior-ratio]\\n[--prefilter-thresh <float> --edge-thresh <float>]"
  }
  output {
    File out_stdout = stdout()
  }
}