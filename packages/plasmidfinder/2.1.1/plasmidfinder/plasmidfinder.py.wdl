version 1.0

task Plasmidfinderpy {
  input {
    Array[File] in_file
    File? output_path
    Directory? tmp_dir
    File? method_path
    File? database_path
    String? databases
    Int? min_cov
    String? threshold
    File? extented_output
    String? species_info_json
  }
  command <<<
    plasmidfinder_py \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(output_path) then ("--outputPath " +  '"' + output_path + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if defined(method_path) then ("--methodPath " +  '"' + method_path + '"') else ""} \
      ~{if defined(database_path) then ("--databasePath " +  '"' + database_path + '"') else ""} \
      ~{if defined(databases) then ("--databases " +  '"' + databases + '"') else ""} \
      ~{if defined(min_cov) then ("--mincov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if (extented_output) then "--extented_output" else ""} \
      ~{if defined(species_info_json) then ("--speciesinfo_json " +  '"' + species_info_json + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/plasmidfinder:2.1.1--0"
  }
  parameter_meta {
    in_file: "FASTA or FASTQ input files."
    output_path: "Path to blast output"
    tmp_dir: "Temporary directory for storage of the results from\\nthe external software."
    method_path: "Path to method to use (kma or blastn)"
    database_path: "Path to the databases"
    databases: "Databases chosen to search in - if non is specified\\nall is used"
    min_cov: "Minimum coverage"
    threshold: "Minimum hreshold for identity"
    extented_output: "Give extented output with allignment files, template\\nand query hits in fasta and a tab seperated file with\\ngene profile results"
    species_info_json: "Argument used by the cge pipeline. It takes a list in\\njson format consisting of taxonomy, from domain ->\\nspecies. A database is chosen based on the taxonomy."
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
    File out_extented_output = "${in_extented_output}"
  }
}