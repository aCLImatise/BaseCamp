version 1.0

task TrainSeqstructhmm {
  input {
    Int? motif_length
    Boolean? random
    Int? flexibility
    Int? block_size
    Int? threshold
    String? job_name
    Directory? output_directory
    Int? termination_interval
    Boolean? no_model_state
    Boolean? only_best_shape
    String training_sequences
    String training_structures
  }
  command <<<
    train_seqstructhmm \
      ~{training_sequences} \
      ~{training_structures} \
      ~{if defined(motif_length) then ("--motif_length " +  '"' + motif_length + '"') else ""} \
      ~{if (random) then "--random" else ""} \
      ~{if defined(flexibility) then ("--flexibility " +  '"' + flexibility + '"') else ""} \
      ~{if defined(block_size) then ("--block_size " +  '"' + block_size + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(job_name) then ("--job_name " +  '"' + job_name + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(termination_interval) then ("--termination_interval " +  '"' + termination_interval + '"') else ""} \
      ~{if (no_model_state) then "--no_model_state" else ""} \
      ~{if (only_best_shape) then "--only_best_shape" else ""}
  >>>
  parameter_meta {
    motif_length: "length of the motif that shall be found (default: 6)"
    random: "Initialize the model randomly (default: initialize\\nwith Baum-Welch optimized sequence motif)"
    flexibility: "greedyness of Gibbs sampler: model parameters are\\nsampled from among the top f configurations (default:\\nf=10), set f to 0 in order to include all possible\\nconfigurations"
    block_size: "number of sequences to be held-out in each iteration\\n(default: 1)"
    threshold: "the iterative algorithm is terminated if this\\nreduction in sequence structure loglikelihood is not\\nreached for any of the 3 last measurements (default:\\n10)"
    job_name: "name of the job (default: \\\"job\\\")"
    output_directory: "directory to write output files to (default: current\\ndirectory)"
    termination_interval: "produce output every <i> iterations (default: i=100)"
    no_model_state: "do not write model state every i iterations"
    only_best_shape: "train only using best structure for each sequence\\n(default: use all structures)\\n"
    training_sequences: "FASTA file with sequences for training"
    training_structures: "FASTA file with RNA structures for training"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}