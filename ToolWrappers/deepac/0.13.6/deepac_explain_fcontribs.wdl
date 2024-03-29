version 1.0

task DeepacExplainFcontribs {
  input {
    File? model
    Boolean? w_norm
    String? non_patho_test
    String? patho_test
    Directory? out_dir
    String? ref_mode
    String? train_data
    String? ref_seqs
    Boolean? perform_calculations_only
    String? inter_layer
    Int? seq_chunk
    Boolean? all_occurrences
    Boolean? recurrent
    Boolean? no_check
    Boolean? partial
    Boolean? easy_partial
    String? t
    String centered
  }
  command <<<
    deepac explain fcontribs \
      ~{centered} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if (w_norm) then "--w-norm" else ""} \
      ~{if defined(non_patho_test) then ("--nonpatho-test " +  '"' + non_patho_test + '"') else ""} \
      ~{if defined(patho_test) then ("--patho-test " +  '"' + patho_test + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(ref_mode) then ("--ref-mode " +  '"' + ref_mode + '"') else ""} \
      ~{if defined(train_data) then ("--train-data " +  '"' + train_data + '"') else ""} \
      ~{if defined(ref_seqs) then ("--ref-seqs " +  '"' + ref_seqs + '"') else ""} \
      ~{if (perform_calculations_only) then "-i" else ""} \
      ~{if defined(inter_layer) then ("--inter-layer " +  '"' + inter_layer + '"') else ""} \
      ~{if defined(seq_chunk) then ("--seq-chunk " +  '"' + seq_chunk + '"') else ""} \
      ~{if (all_occurrences) then "--all-occurrences" else ""} \
      ~{if (recurrent) then "--recurrent" else ""} \
      ~{if (no_check) then "--no-check" else ""} \
      ~{if (partial) then "--partial" else ""} \
      ~{if (easy_partial) then "--easy-partial" else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepac:0.13.6--py_0"
  }
  parameter_meta {
    model: "Model file (.h5)"
    w_norm: "Set flag if filter weight matrices should be mean-"
    non_patho_test: "Nonpathogenic reads of the test data set (.fasta)"
    patho_test: "Pathogenic reads of the test data set (.fasta)"
    out_dir: "Output directory"
    ref_mode: "Modus to calculate reference sequences"
    train_data: "Train data (.npy), necessary to calculate reference\\nsequences if ref_mode is 'GC'"
    ref_seqs: "User provided reference sequences (.fasta) if ref_mode\\nis 'own_ref_file'"
    perform_calculations_only: "[INTER_NEURON [INTER_NEURON ...]], --inter-neuron [INTER_NEURON [INTER_NEURON ...]]\\nPerform calculations for this intermediate neuron only"
    inter_layer: "Perform calculations for this intermediate layer"
    seq_chunk: "Sequence chunk size. Decrease for lower memory usage."
    all_occurrences: "Extract contributions for all occurrences of a filter\\nper read (Default: max only)"
    recurrent: "Interpret elements of the LSTM output"
    no_check: "Disable additivity check."
    partial: "Calculate partial nucleotide contributions per filter."
    easy_partial: "Calculate easy partial nucleotide contributions per\\nfilter. Works for the first convolutional layer only;\\ndisables all-occurences mode.\\n"
    t: ""
    centered: "-t TEST_DATA, --test_data TEST_DATA"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}