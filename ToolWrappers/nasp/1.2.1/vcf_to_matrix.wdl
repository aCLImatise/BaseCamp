version 1.0

task VcfToMatrix {
  input {
    String? mode
    File? reference_fast_a
    File? reference_dups
    Array[String] input_files
    Directory? matrix_folder
    Directory? stats_folder
    String? minimum_coverage
    String? minimum_proportion
    Int? num_threads
    File? d_to_file
  }
  command <<<
    vcf_to_matrix \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(reference_fast_a) then ("--reference-fasta " +  '"' + reference_fast_a + '"') else ""} \
      ~{if defined(reference_dups) then ("--reference-dups " +  '"' + reference_dups + '"') else ""} \
      ~{if defined(input_files) then ("--input-files " +  '"' + input_files + '"') else ""} \
      ~{if defined(matrix_folder) then ("--matrix-folder " +  '"' + matrix_folder + '"') else ""} \
      ~{if defined(stats_folder) then ("--stats-folder " +  '"' + stats_folder + '"') else ""} \
      ~{if defined(minimum_coverage) then ("--minimum-coverage " +  '"' + minimum_coverage + '"') else ""} \
      ~{if defined(minimum_proportion) then ("--minimum-proportion " +  '"' + minimum_proportion + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(d_to_file) then ("--dto-file " +  '"' + d_to_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mode: "Data passing mode, must be set to 'commandline' or\\n'xml'."
    reference_fast_a: "Path to input reference fasta file."
    reference_dups: "Path to input reference dups file."
    input_files: "Path to input VCF/fasta files for matrix conversion."
    matrix_folder: "Name of folder to write output matries to."
    stats_folder: "Name of folder to write statistics files to."
    minimum_coverage: "Minimum coverage depth at a position."
    minimum_proportion: "Minimum proportion of reads that must match the call\\nat a position."
    num_threads: "Number of threads to use when processing input."
    d_to_file: "Path to a matrix_dto XML file that defines all the\\nparameters.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_matrix_folder = "${in_matrix_folder}"
  }
}