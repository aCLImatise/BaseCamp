version 1.0

task PIPmiRCLASSIFIER {
  input {
    File? file_their_structure
    File? sorted_bam_file
    String? basename_output_files
    Int? minimum_read_count
    Int? maximum_amount_memory
    File? file_containing_trainingdatadat
    Boolean? creates_log_file
  }
  command <<<
    PIPmiR CLASSIFIER \
      ~{if defined(file_their_structure) then ("-P " +  '"' + file_their_structure + '"') else ""} \
      ~{if defined(sorted_bam_file) then ("-a " +  '"' + sorted_bam_file + '"') else ""} \
      ~{if defined(basename_output_files) then ("-o " +  '"' + basename_output_files + '"') else ""} \
      ~{if defined(minimum_read_count) then ("-m " +  '"' + minimum_read_count + '"') else ""} \
      ~{if defined(maximum_amount_memory) then ("-X " +  '"' + maximum_amount_memory + '"') else ""} \
      ~{if defined(file_containing_trainingdatadat) then ("-T " +  '"' + file_containing_trainingdatadat + '"') else ""} \
      ~{if (creates_log_file) then "-d" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_their_structure: "File of putative miRNA precursor sequences and their fold structure (see README)"
    sorted_bam_file: ".bam Sorted .bam file containing alignment of the read data"
    basename_output_files: "basename of output files"
    minimum_read_count: "Minimum read count for a mature to be considered expressed (Default: 10)"
    maximum_amount_memory: "Maximum amount of memory PIPmiR can use (Default: 4G)"
    file_containing_trainingdatadat: "File containing classifier training data (Default: TrainingData.dat)"
    creates_log_file: "Creates a log file of PIPmiR results at <output_header>_log.csv"
  }
  output {
    File out_stdout = stdout()
  }
}