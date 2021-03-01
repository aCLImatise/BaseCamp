version 1.0

task Augustifypy {
  input {
    File? genome
    File? parameter_list
    File? meta_genomic_classification_outfile
    File? prediction_file
    Boolean? species
    File? augustus_config_path
    File? augustus_bin_path
    Int? threads
  }
  command <<<
    augustify_py \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(parameter_list) then ("--parameter_list " +  '"' + parameter_list + '"') else ""} \
      ~{if defined(meta_genomic_classification_outfile) then ("--metagenomic_classification_outfile " +  '"' + meta_genomic_classification_outfile + '"') else ""} \
      ~{if defined(prediction_file) then ("--prediction_file " +  '"' + prediction_file + '"') else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if defined(augustus_config_path) then ("--augustus_config_path " +  '"' + augustus_config_path + '"') else ""} \
      ~{if defined(augustus_bin_path) then ("--augustus_bin_path " +  '"' + augustus_bin_path + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    genome: "Genome fasta file (possibly softmasked)"
    parameter_list: "File that lists parameter sets to be tried on input\\nsequence (one parameter set name per line)"
    meta_genomic_classification_outfile: "Output a tabulator separated text file that assigns\\nsequences to paramter sets (last column contains\\nprobability)."
    prediction_file: "GFF file with gene predictions (only compatible with\\noption --metagenomic_classification_outfile/-m)."
    species: "Output the dominant and most suitable parameter set\\nname across all input sequences."
    augustus_config_path: "Set path to the config directory of AUGUSTUS. If not\\ngiven, will try to set augustus_config_path to\\nenvironment variable AUGUSTUS_CONFIG_PATH. If this\\ndoes not work, will try to set augustus_config_path to\\naugustus_bin_path/../config/. The commandline argument\\n--augustus_config_path has higher priority than the\\nenvironment variable with the same name."
    augustus_bin_path: "Set path to the AUGUSTUS directory that contains\\naugustus binary. If not given, will try to locate the\\npath with which(augustus)"
    threads: "Number of threads for running augustus. The number of\\nthreads should not be greater than the number of\\nspecies parameter sets.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_meta_genomic_classification_outfile = "${in_meta_genomic_classification_outfile}"
  }
}