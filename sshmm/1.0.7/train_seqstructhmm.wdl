version 1.0

task TrainSeqstructhmm {
  input {
    String? motif_length
    Boolean? random
    String? flexibility
    String? block_size
    String? threshold
    String? job_name
    String? output_directory
    String? termination_interval
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
      ~{true="--random" false="" random} \
      ~{if defined(flexibility) then ("--flexibility " +  '"' + flexibility + '"') else ""} \
      ~{if defined(block_size) then ("--block_size " +  '"' + block_size + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(job_name) then ("--job_name " +  '"' + job_name + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(termination_interval) then ("--termination_interval " +  '"' + termination_interval + '"') else ""} \
      ~{true="--no_model_state" false="" no_model_state} \
      ~{true="--only_best_shape" false="" only_best_shape}
  >>>
  parameter_meta {
    motif_length: "length of the motif that shall be found (default: 6)"
    random: "Initialize the model randomly (default: initialize with Baum-Welch optimized sequence motif)"
    flexibility: "greedyness of Gibbs sampler: model parameters are sampled from among the top f configurations (default: f=10), set f to 0 in order to include all possible configurations"
    block_size: "number of sequences to be held-out in each iteration (default: 1)"
    threshold: "the iterative algorithm is terminated if this reduction in sequence structure loglikelihood is not reached for any of the 3 last measurements (default: 10)"
    job_name: "name of the job (default: \"job\")"
    output_directory: "directory to write output files to (default: current directory)"
    termination_interval: "produce output every <i> iterations (default: i=100)"
    no_model_state: "do not write model state every i iterations"
    only_best_shape: "train only using best structure for each sequence (default: use all structures)"
    training_sequences: "FASTA file with sequences for training"
    training_structures: "FASTA file with RNA structures for training"
  }
}