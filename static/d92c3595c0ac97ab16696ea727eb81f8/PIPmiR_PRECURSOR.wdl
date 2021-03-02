version 1.0

task PIPmiRPRECURSOR {
  input {
    File? file_putative_mirnas
    File? version_genome_reads
    String? basename_output_files
    Int? minimum_size_default
    Int? maximum_size_default
    Int? step_size_default
    Int? number_threads_pipmir
    Int? maximum_amount_memory
    Int? location_rnafold_default
    Boolean? creates_log_file
  }
  command <<<
    PIPmiR PRECURSOR \
      ~{if defined(file_putative_mirnas) then ("-b " +  '"' + file_putative_mirnas + '"') else ""} \
      ~{if defined(version_genome_reads) then ("-t " +  '"' + version_genome_reads + '"') else ""} \
      ~{if defined(basename_output_files) then ("-o " +  '"' + basename_output_files + '"') else ""} \
      ~{if defined(minimum_size_default) then ("-l " +  '"' + minimum_size_default + '"') else ""} \
      ~{if defined(maximum_size_default) then ("-L " +  '"' + maximum_size_default + '"') else ""} \
      ~{if defined(step_size_default) then ("-s " +  '"' + step_size_default + '"') else ""} \
      ~{if defined(number_threads_pipmir) then ("-p " +  '"' + number_threads_pipmir + '"') else ""} \
      ~{if defined(maximum_amount_memory) then ("-X " +  '"' + maximum_amount_memory + '"') else ""} \
      ~{if defined(location_rnafold_default) then ("-R " +  '"' + location_rnafold_default + '"') else ""} \
      ~{if (creates_log_file) then "-d" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_putative_mirnas: "File of putative miRNAs in .bed format"
    version_genome_reads: ".2bit version of the genome against which the reads were aligned"
    basename_output_files: "basename of output files"
    minimum_size_default: "Minimum size for a precursor sequence (Default: 50)"
    maximum_size_default: "Maximum size for a precursor sequence (Default: 500)"
    step_size_default: "Step size for calculating precursor sequence (Default: 2)"
    number_threads_pipmir: "Number of threads the PIPmiR can use (Default: 1)"
    maximum_amount_memory: "Maximum amount of memory PIPmiR can use (Default: 4G)"
    location_rnafold_default: "Location of RNAfold (Default: /home/dc97/bin/RNAfold)"
    creates_log_file: "Creates a log file of PIPmiR results at <output_header>_log.csv"
  }
  output {
    File out_stdout = stdout()
  }
}