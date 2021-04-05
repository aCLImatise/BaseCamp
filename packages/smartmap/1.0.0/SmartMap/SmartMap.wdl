version 1.0

task SmartMap {
  input {
    Boolean? genome_length_file
    Boolean? output_prefix_used
    Boolean? number_iterations_default
    Boolean? maximum_number_alignments
    Boolean? minimum_score_bowtie
    Boolean? n_nfold_crossvalidation
    Boolean? flag_continuous_output
    Boolean? flag_mode_default
    Boolean? flag_read_output
    Boolean? rate_fitting_reweighting
  }
  command <<<
    SmartMap \
      ~{if (genome_length_file) then "-g" else ""} \
      ~{if (output_prefix_used) then "-o" else ""} \
      ~{if (number_iterations_default) then "-i" else ""} \
      ~{if (maximum_number_alignments) then "-m" else ""} \
      ~{if (minimum_score_bowtie) then "-s" else ""} \
      ~{if (n_nfold_crossvalidation) then "-v" else ""} \
      ~{if (flag_continuous_output) then "-c" else ""} \
      ~{if (flag_mode_default) then "-S" else ""} \
      ~{if (flag_read_output) then "-r" else ""} \
      ~{if (rate_fitting_reweighting) then "-l" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smartmap:1.0.0--he513fc3_0"
  }
  parameter_meta {
    genome_length_file: ": Genome length file listing all chromosomes and lengths. Chromosomes will appear in this order in output file."
    output_prefix_used: ": Output prefix used for output bedgraph and log files."
    number_iterations_default: ": Number of iterations. Default 1."
    maximum_number_alignments: ": Maximum number of alignments for a read to be processed. Default 50."
    minimum_score_bowtie: ": Minimum score for Bowtie2 display. Default 0 (unscored)."
    n_nfold_crossvalidation: ": N for N-fold cross-validation. Default 1 (no cross-validation)."
    flag_continuous_output: ": Flag for continuous output bedgraphs. Default off."
    flag_mode_default: ": Flag for strand-specific mode. Default off."
    flag_read_output: ": Flag for read output mode with weights. Default off."
    rate_fitting_reweighting: ": Rate of fitting in reweighting. Default 1."
  }
  output {
    File out_stdout = stdout()
  }
}