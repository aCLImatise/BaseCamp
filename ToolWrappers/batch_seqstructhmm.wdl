version 1.0

task BatchSeqstructhmm {
  input {
    Int? cores
    String? structure_type
    Int? motif_length
    Boolean? baum_welch
    Int? flexibility
    Int? block_size
    Int? threshold
    Int? termination_interval
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
      ~{if (baum_welch) then "--baum_welch" else ""} \
      ~{if defined(flexibility) then ("--flexibility " +  '"' + flexibility + '"') else ""} \
      ~{if defined(block_size) then ("--block_size " +  '"' + block_size + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(termination_interval) then ("--termination_interval " +  '"' + termination_interval + '"') else ""}
  >>>
  parameter_meta {
    cores: "number of cores to use (if not given, all cores are\\nused)"
    structure_type: "structure type to use; must match location of\\nstructure files (see data_directory argument above)\\n(default: shapes)"
    motif_length: "length of the motifs that shall be found (default: 6)"
    baum_welch: "should the models be initialized with a Baum-Welch\\noptimized sequence motif (default: yes)"
    flexibility: "greedyness of Gibbs sampler: model parameters are\\nsampled from among the top f configurations (default:\\nf=10), set f to 0 in order to include all possible\\nconfigurations"
    block_size: "number of sequences to be held-out in each iteration\\n(default: 1)"
    threshold: "the iterative algorithm is terminated if this\\nreduction in sequence structure loglikelihood is not\\nreached for any of the 3 last measurements (default:\\n10)"
    termination_interval: "produce output every <i> iterations (default: i=100)\\n"
    data_directory: "data directory; must contain the sequence files under\\nfasta/<protein>/positive.fasta and structure files\\nunder <structure_type>/<protein>/positive.txt"
    proteins: "list of RNA-binding proteins to analyze (surrounded by\\nquotation marks, separated by whitespace)"
    batch_directory: "directory for batch output"
  }
  output {
    File out_stdout = stdout()
  }
}