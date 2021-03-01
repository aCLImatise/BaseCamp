version 1.0

task PegasusFindMarkers {
  input {
    Int? use_threads_threads
    String? labels
    String? de_key
    Boolean? remove_ribo
    Int? min_gain
    Int? random_state
    String input_data_file
  }
  command <<<
    pegasus find_markers \
      ~{input_data_file} \
      ~{if defined(use_threads_threads) then ("-p " +  '"' + use_threads_threads + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(de_key) then ("--de-key " +  '"' + de_key + '"') else ""} \
      ~{if (remove_ribo) then "--remove-ribo" else ""} \
      ~{if defined(min_gain) then ("--min-gain " +  '"' + min_gain + '"') else ""} \
      ~{if defined(random_state) then ("--random-state " +  '"' + random_state + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1"
  }
  parameter_meta {
    use_threads_threads: "Use <threads> threads. [default: 1]"
    labels: "<attr> used as cluster labels. [default: louvain_labels]"
    de_key: "Key for storing DE results in 'varm' field. [default: de_res]"
    remove_ribo: "Remove ribosomal genes with either RPL or RPS as prefixes."
    min_gain: "Only report genes with a feature importance score (in gain) of at least <gain>. [default: 1.0]"
    random_state: "Random state for initializing LightGBM and KMeans. [default: 0]"
    input_data_file: "Single cell data after running the de_analysis."
  }
  output {
    File out_stdout = stdout()
  }
}