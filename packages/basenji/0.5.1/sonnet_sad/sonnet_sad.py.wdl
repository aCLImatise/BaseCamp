version 1.0

task SonnetSadpy {
  input {
    String? slice_center_positions
    Int? genome_fasta_sequences
    File? normalize_sad_scores
    Directory? output_directory_plots
    Int? number_processes_passed
    Int? pseudo
    Boolean? rc
    Int? shifts
    String? species
    File? file_specifying_indexes
    String model
    String vcf_file
  }
  command <<<
    sonnet_sad_py \
      ~{model} \
      ~{vcf_file} \
      ~{if defined(slice_center_positions) then ("-c " +  '"' + slice_center_positions + '"') else ""} \
      ~{if defined(genome_fasta_sequences) then ("-f " +  '"' + genome_fasta_sequences + '"') else ""} \
      ~{if defined(normalize_sad_scores) then ("-n " +  '"' + normalize_sad_scores + '"') else ""} \
      ~{if defined(output_directory_plots) then ("-o " +  '"' + output_directory_plots + '"') else ""} \
      ~{if defined(number_processes_passed) then ("-p " +  '"' + number_processes_passed + '"') else ""} \
      ~{if defined(pseudo) then ("--pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if (rc) then "--rc" else ""} \
      ~{if defined(shifts) then ("--shifts " +  '"' + shifts + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(file_specifying_indexes) then ("-t " +  '"' + file_specifying_indexes + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  parameter_meta {
    slice_center_positions: "Slice center positions [Default: none]"
    genome_fasta_sequences: "Genome FASTA for sequences [Default:\\n/usr/local/share/basenji//data/hg38.fa]"
    normalize_sad_scores: "Normalize SAD scores"
    output_directory_plots: "Output directory for tables and plots [Default: sad]"
    number_processes_passed: "Number of processes, passed by multi script"
    pseudo: "Log2 pseudocount [Default: 1]"
    rc: "Average forward and reverse complement predictions\\n[Default: False]"
    shifts: "Ensemble prediction shifts [Default: 0]"
    species: "Comma-separated list of stats to save. [Default: SAD]"
    file_specifying_indexes: "File specifying target indexes and labels in table\\nformat\\n"
    model: ""
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_plots = "${in_output_directory_plots}"
  }
}