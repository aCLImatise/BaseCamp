version 1.0

task PIPmiRPIPELINE {
  input {
    File? sorted_bam_file
    File? version_genome_reads
    String? basename_output_files
    Int? minimum_size_default
    Int? maximum_size_default
    Int? step_size_default
    Int? minimum_read_count
    Int? number_threads_pipmir
    Int? maximum_amount_memory
    File? file_containing_trainingdatadat
    Int? location_rnafold_default
    Boolean? creates_log_file
  }
  command <<<
    PIPmiR PIPELINE \
      ~{if defined(sorted_bam_file) then ("-a " +  '"' + sorted_bam_file + '"') else ""} \
      ~{if defined(version_genome_reads) then ("-t " +  '"' + version_genome_reads + '"') else ""} \
      ~{if defined(basename_output_files) then ("-o " +  '"' + basename_output_files + '"') else ""} \
      ~{if defined(minimum_size_default) then ("-l " +  '"' + minimum_size_default + '"') else ""} \
      ~{if defined(maximum_size_default) then ("-L " +  '"' + maximum_size_default + '"') else ""} \
      ~{if defined(step_size_default) then ("-s " +  '"' + step_size_default + '"') else ""} \
      ~{if defined(minimum_read_count) then ("-m " +  '"' + minimum_read_count + '"') else ""} \
      ~{if defined(number_threads_pipmir) then ("-p " +  '"' + number_threads_pipmir + '"') else ""} \
      ~{if defined(maximum_amount_memory) then ("-X " +  '"' + maximum_amount_memory + '"') else ""} \
      ~{if defined(file_containing_trainingdatadat) then ("-T " +  '"' + file_containing_trainingdatadat + '"') else ""} \
      ~{if defined(location_rnafold_default) then ("-R " +  '"' + location_rnafold_default + '"') else ""} \
      ~{if (creates_log_file) then "-d" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sorted_bam_file: ".bam Sorted .bam file containing alignment of the read data\\nmust also have <alignment_file.bai> at the same location"
    version_genome_reads: ".2bit version of the genome against which the reads were aligned"
    basename_output_files: "basename of output files"
    minimum_size_default: "Minimum size for a precursor sequence (Default: 50)"
    maximum_size_default: "Maximum size for a precursor sequence (Default: 500)"
    step_size_default: "Step size for calculating precursor sequence (Default: 2)"
    minimum_read_count: "Minimum read count for a mature to be considered expressed (Default: 10)"
    number_threads_pipmir: "Number of threads the PIPmiR can use (Default: 1)"
    maximum_amount_memory: "Maximum amount of memory PIPmiR can use (Default: 4G)"
    file_containing_trainingdatadat: "File containing classifier training data (Default: TrainingData.dat)"
    location_rnafold_default: "Location of RNAfold (Default: /home/dc97/bin/RNAfold)"
    creates_log_file: "Creates a log file of PIPmiR results at <output_header>_log.csv"
  }
  output {
    File out_stdout = stdout()
  }
}