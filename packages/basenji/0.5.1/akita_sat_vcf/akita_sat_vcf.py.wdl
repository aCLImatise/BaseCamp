version 1.0

task AkitaSatVcfpy {
  input {
    Int? genome_fasta_sequences
    Boolean? draw_sequence_logo
    Int? length_centered_sequence
    Int? minimum_heatmap_limit
    Boolean? load_predictions_files
    Directory? output_directory
    Boolean? rc
    Int? shifts
    File? file_specifying_indexes
    Int? figure_width
    String params_file
    String model_file
    String vcf_file
  }
  command <<<
    akita_sat_vcf_py \
      ~{params_file} \
      ~{model_file} \
      ~{vcf_file} \
      ~{if defined(genome_fasta_sequences) then ("-f " +  '"' + genome_fasta_sequences + '"') else ""} \
      ~{if (draw_sequence_logo) then "-g" else ""} \
      ~{if defined(length_centered_sequence) then ("-l " +  '"' + length_centered_sequence + '"') else ""} \
      ~{if defined(minimum_heatmap_limit) then ("-m " +  '"' + minimum_heatmap_limit + '"') else ""} \
      ~{if (load_predictions_files) then "-n" else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if (rc) then "--rc" else ""} \
      ~{if defined(shifts) then ("--shifts " +  '"' + shifts + '"') else ""} \
      ~{if defined(file_specifying_indexes) then ("-t " +  '"' + file_specifying_indexes + '"') else ""} \
      ~{if defined(figure_width) then ("-w " +  '"' + figure_width + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  parameter_meta {
    genome_fasta_sequences: "Genome FASTA for sequences [Default:\\n/usr/local/share/basenji//data/hg19.fa]"
    draw_sequence_logo: "Draw a sequence logo for the gain score, too [Default:\\nFalse]"
    length_centered_sequence: "Length of centered sequence to mutate [Default: 200]"
    minimum_heatmap_limit: "Minimum heatmap limit [Default: 0.1]"
    load_predictions_files: "Load the predictions from .npy files [Default: False]"
    output_directory: "Output directory [Default: sat_vcf]"
    rc: "Ensemble forward and reverse complement predictions\\n[Default: False]"
    shifts: "Ensemble prediction shifts [Default: 0]"
    file_specifying_indexes: "File specifying target indexes and labels in table format"
    figure_width: "Figure width [Default: 20]"
    params_file: ""
    model_file: ""
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}