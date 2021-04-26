version 1.0

task BasenjiSatBedpy {
  input {
    Int? nucleotides_downstream_mutate
    String? genome_fasta_sequences
    Int? length_center_sequence
    Directory? output_directory
    Boolean? plots
    Int? number_processes_passed
    Boolean? rc
    Int? shifts
    String? stats
    File? file_specifying_indexes
    Int? nucleotides_upstream_center
    String params_file
    String model_file
    String bed_file
  }
  command <<<
    basenji_sat_bed_py \
      ~{params_file} \
      ~{model_file} \
      ~{bed_file} \
      ~{if defined(nucleotides_downstream_mutate) then ("-d " +  '"' + nucleotides_downstream_mutate + '"') else ""} \
      ~{if defined(genome_fasta_sequences) then ("-f " +  '"' + genome_fasta_sequences + '"') else ""} \
      ~{if defined(length_center_sequence) then ("-l " +  '"' + length_center_sequence + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if (plots) then "--plots" else ""} \
      ~{if defined(number_processes_passed) then ("-p " +  '"' + number_processes_passed + '"') else ""} \
      ~{if (rc) then "--rc" else ""} \
      ~{if defined(shifts) then ("--shifts " +  '"' + shifts + '"') else ""} \
      ~{if defined(stats) then ("--stats " +  '"' + stats + '"') else ""} \
      ~{if defined(file_specifying_indexes) then ("-t " +  '"' + file_specifying_indexes + '"') else ""} \
      ~{if defined(nucleotides_upstream_center) then ("-u " +  '"' + nucleotides_upstream_center + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  parameter_meta {
    nucleotides_downstream_mutate: "Nucleotides downstream of center sequence to mutate\\n[Default: 0]"
    genome_fasta_sequences: "Genome FASTA for sequences [Default: none]"
    length_center_sequence: "Length of center sequence to mutate [Default: 0]"
    output_directory: "Output directory [Default: sat_mut]"
    plots: "Make heatmap plots [Default: False]"
    number_processes_passed: "Number of processes, passed by multi script"
    rc: "Ensemble forward and reverse complement predictions\\n[Default: False]"
    shifts: "Ensemble prediction shifts [Default: 0]"
    stats: "Comma-separated list of stats to save. [Default: sum]"
    file_specifying_indexes: "File specifying target indexes and labels in table format"
    nucleotides_upstream_center: "Nucleotides upstream of center sequence to mutate\\n[Default: 0]\\n"
    params_file: ""
    model_file: ""
    bed_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}