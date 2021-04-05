version 1.0

task PoppunkBatchMstpy {
  input {
    String? r_files
    File? batch_file
    Int? n_batches
    String? info_csv
    String? prefix_output_files
    File? previous_clustering
    Boolean? iterative_mst
    Boolean? keep_intermediates
    Boolean? use_batch_names
    String? rank
    Int? threads
    Boolean? gpu_dist
    Boolean? gpu_graph
    Int? deviceid
    Int? db_args
    String? model_args
    String? assign_args
    String? qc_filter
    Boolean? retain_failures
    Int? max_a_dist
    Int? length_sigma
    Int? length_range
    Float? prop_n
    String? upper_n
    String? pop_punk_exe
    String? assign_exe
    String? mst_exe
  }
  command <<<
    poppunk_batch_mst_py \
      ~{if defined(r_files) then ("--r-files " +  '"' + r_files + '"') else ""} \
      ~{if defined(batch_file) then ("--batch-file " +  '"' + batch_file + '"') else ""} \
      ~{if defined(n_batches) then ("--n-batches " +  '"' + n_batches + '"') else ""} \
      ~{if defined(info_csv) then ("--info-csv " +  '"' + info_csv + '"') else ""} \
      ~{if defined(prefix_output_files) then ("--output " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(previous_clustering) then ("--previous-clustering " +  '"' + previous_clustering + '"') else ""} \
      ~{if (iterative_mst) then "--iterative-mst" else ""} \
      ~{if (keep_intermediates) then "--keep-intermediates" else ""} \
      ~{if (use_batch_names) then "--use-batch-names" else ""} \
      ~{if defined(rank) then ("--rank " +  '"' + rank + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (gpu_dist) then "--gpu-dist" else ""} \
      ~{if (gpu_graph) then "--gpu-graph" else ""} \
      ~{if defined(deviceid) then ("--deviceid " +  '"' + deviceid + '"') else ""} \
      ~{if defined(db_args) then ("--db-args " +  '"' + db_args + '"') else ""} \
      ~{if defined(model_args) then ("--model-args " +  '"' + model_args + '"') else ""} \
      ~{if defined(assign_args) then ("--assign-args " +  '"' + assign_args + '"') else ""} \
      ~{if defined(qc_filter) then ("--qc-filter " +  '"' + qc_filter + '"') else ""} \
      ~{if (retain_failures) then "--retain-failures" else ""} \
      ~{if defined(max_a_dist) then ("--max-a-dist " +  '"' + max_a_dist + '"') else ""} \
      ~{if defined(length_sigma) then ("--length-sigma " +  '"' + length_sigma + '"') else ""} \
      ~{if defined(length_range) then ("--length-range " +  '"' + length_range + '"') else ""} \
      ~{if defined(prop_n) then ("--prop-n " +  '"' + prop_n + '"') else ""} \
      ~{if defined(upper_n) then ("--upper-n " +  '"' + upper_n + '"') else ""} \
      ~{if defined(pop_punk_exe) then ("--poppunk-exe " +  '"' + pop_punk_exe + '"') else ""} \
      ~{if defined(assign_exe) then ("--assign-exe " +  '"' + assign_exe + '"') else ""} \
      ~{if defined(mst_exe) then ("--mst-exe " +  '"' + mst_exe + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0"
  }
  parameter_meta {
    r_files: "Sample names and locations (as for poppunk --r-files)"
    batch_file: "Single column list of batches to process samples in\\n--r-files in"
    n_batches: "Number of batches for process if --batch-file is not\\nspecified"
    info_csv: "CSV containing information about sequences"
    prefix_output_files: "Prefix for output files"
    previous_clustering: "CSV file with previous clusters in MST drawing"
    iterative_mst: "Re-calculate the MST for each batch"
    keep_intermediates: "Retain the outputs of each batch"
    use_batch_names: "Name the stored outputs of each batch"
    rank: "Comma separated ranks used to fit lineage model (list\\nof ints)"
    threads: "Number of threads for parallelisation (int)"
    gpu_dist: "Use GPU for distance calculations"
    gpu_graph: "Use GPU for network analysis"
    deviceid: "GPU device ID (int)"
    db_args: "Other arguments to pass to poppunk. e.g. '--min-k 13"
    model_args: "Other arguments to pass to lineage model fit"
    assign_args: "Other arguments to pass to poppunk_assign"
    qc_filter: "Behaviour following sequence QC step: \\\"stop\\\"\\n[default], \\\"prune\\\" (analyse data passing QC), or\\n\\\"continue\\\" (analyse all data)"
    retain_failures: "Retain sketches of genomes that do not pass QC filters\\nin separate database [default = False]"
    max_a_dist: "Maximum accessory distance to permit [default = 0.5]"
    length_sigma: "Number of standard deviations of length distribution\\nbeyond which sequences will be excluded [default = 5]"
    length_range: "LENGTH_RANGE\\nAllowed length range, outside of which sequences will\\nbe excluded [two values needed - lower and upper\\nbounds]"
    prop_n: "Threshold ambiguous base proportion above which\\nsequences will be excluded [default = 0.1]"
    upper_n: "Threshold ambiguous base count above which sequences\\nwill be excluded"
    pop_punk_exe: "Location of poppunk executable. Use 'python poppunk-\\nrunner.py' to run from source tree"
    assign_exe: "Location of poppunk_assign executable. Use 'python\\npoppunk_assign-runner.py' to run from source tree"
    mst_exe: "Location of poppunk executable. Use 'python\\npoppunk_mst-runner.py' to run from source tree\\n"
  }
  output {
    File out_stdout = stdout()
  }
}