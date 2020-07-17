version 1.0

task BatchSeqstructhmm {
  input {
    String? cores
    String? structure_type
    String? motif_length
    Boolean? baum_welch
    String? flexibility
    String? block_size
    String? threshold
    String? termination_interval
    String data_directory
    String proteins
    String batch_directory
  }
  command <<<
    batch_seqstructhmm \
      ~{data_directory} \
      ~{proteins} \
      ~{batch_directory} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(structure_type) then ("--structure_type " +  '"' + structure_type + '"') else ""} \
      ~{if defined(motif_length) then ("--motif_length " +  '"' + motif_length + '"') else ""} \
      ~{true="--baum_welch" false="" baum_welch} \
      ~{if defined(flexibility) then ("--flexibility " +  '"' + flexibility + '"') else ""} \
      ~{if defined(block_size) then ("--block_size " +  '"' + block_size + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(termination_interval) then ("--termination_interval " +  '"' + termination_interval + '"') else ""}
  >>>
  parameter_meta {
    cores: "number of cores to use (if not given, all cores are used)"
    structure_type: "structure type to use; must match location of structure files (see data_directory argument above) (default: shapes)"
    motif_length: "length of the motifs that shall be found (default: 6)"
    baum_welch: "should the models be initialized with a Baum-Welch optimized sequence motif (default: yes)"
    flexibility: "greedyness of Gibbs sampler: model parameters are sampled from among the top f configurations (default: f=10), set f to 0 in order to include all possible configurations"
    block_size: "number of sequences to be held-out in each iteration (default: 1)"
    threshold: "the iterative algorithm is terminated if this reduction in sequence structure loglikelihood is not reached for any of the 3 last measurements (default: 10)"
    termination_interval: "produce output every <i> iterations (default: i=100)"
    data_directory: "data directory; must contain the sequence files under fasta/<protein>/positive.fasta and structure files under <structure_type>/<protein>/positive.txt"
    proteins: "list of RNA-binding proteins to analyze (surrounded by quotation marks, separated by whitespace)"
    batch_directory: "directory for batch output"
  }
}