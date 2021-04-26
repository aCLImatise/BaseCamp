version 1.0

task SonnetPredictBedpy {
  input {
    String? commaseparated_list_write
    String? embed_sequences_using
    String? genome_fasta_sequences
    File? chromosome_length_information
    Int? prediction_site_length
    Directory? output_directory
    Int? number_processes_passed
    Boolean? rc
    Boolean? sum_site_predictions
    Int? shifts
    File? species
    String model_file
    String bed_file
  }
  command <<<
    sonnet_predict_bed_py \
      ~{model_file} \
      ~{bed_file} \
      ~{if defined(commaseparated_list_write) then ("-b " +  '"' + commaseparated_list_write + '"') else ""} \
      ~{if defined(embed_sequences_using) then ("-e " +  '"' + embed_sequences_using + '"') else ""} \
      ~{if defined(genome_fasta_sequences) then ("-f " +  '"' + genome_fasta_sequences + '"') else ""} \
      ~{if defined(chromosome_length_information) then ("-g " +  '"' + chromosome_length_information + '"') else ""} \
      ~{if defined(prediction_site_length) then ("-l " +  '"' + prediction_site_length + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(number_processes_passed) then ("-p " +  '"' + number_processes_passed + '"') else ""} \
      ~{if (rc) then "--rc" else ""} \
      ~{if (sum_site_predictions) then "-s" else ""} \
      ~{if defined(shifts) then ("--shifts " +  '"' + shifts + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  parameter_meta {
    commaseparated_list_write: "Comma-separated list of target indexes to write BigWigs"
    embed_sequences_using: "Embed sequences using the specified layer index."
    genome_fasta_sequences: "Genome FASTA for sequences [Default: none]"
    chromosome_length_information: "Chromosome length information [Default: none]"
    prediction_site_length: "Prediction site length. [Default: model seq_length]"
    output_directory: "Output directory [Default: pred_out]"
    number_processes_passed: "Number of processes, passed by multi script"
    rc: "Ensemble forward and reverse complement predictions\\n[Default: False]"
    sum_site_predictions: "Sum site predictions [Default: False]"
    shifts: "Ensemble prediction shifts [Default: 0]"
    species: "File specifying target indexes and labels in table format"
    model_file: ""
    bed_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}