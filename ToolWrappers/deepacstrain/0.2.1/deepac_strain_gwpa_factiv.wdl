version 1.0

task DeepacstrainGwpaFactiv {
  input {
    File? model
    String? test_data
    String? test_fast_a
    Directory? out_dir
    String? inter_layer
    Int? seq_chunk
    Boolean? perform_calculations_only
    String deep_ac
    String gwp_a
    String fact_iv
  }
  command <<<
    deepac_strain gwpa factiv \
      ~{deep_ac} \
      ~{gwp_a} \
      ~{fact_iv} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(test_data) then ("--test-data " +  '"' + test_data + '"') else ""} \
      ~{if defined(test_fast_a) then ("--test-fasta " +  '"' + test_fast_a + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(inter_layer) then ("--inter-layer " +  '"' + inter_layer + '"') else ""} \
      ~{if defined(seq_chunk) then ("--seq-chunk " +  '"' + seq_chunk + '"') else ""} \
      ~{if (perform_calculations_only) then "-F" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepacstrain:0.2.1--py_0"
  }
  parameter_meta {
    model: "Model file (.h5)"
    test_data: "Test data (.npy)"
    test_fast_a: "Reads of the test data set (.fasta)"
    out_dir: "Output directory"
    inter_layer: "Perform calculations for this intermediate layer"
    seq_chunk: "Sequence chunk size. Decrease for lower memory usage."
    perform_calculations_only: "[INTER_NEURON [INTER_NEURON ...]], --inter-neuron [INTER_NEURON [INTER_NEURON ...]]\\nPerform calculations for this filter only\\n"
    deep_ac: ""
    gwp_a: ""
    fact_iv: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}