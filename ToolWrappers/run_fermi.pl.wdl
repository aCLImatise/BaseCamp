version 1.0

task Runfermipl {
  input {
    Boolean? input_files_paired
    Boolean? input_collatediniterleaved_fastq
    Boolean? halve_number_jobs
    Boolean? use_original_algorithm
    Boolean? skip_error_correction
    File? fermi_executable
    Int? number_of_threads
    String? prefix_output_files
    Int? trim_reads_int
    Int? minimum_overlap
    Boolean? more_options
    Boolean? options
    Int in_one_dot_fq
  }
  command <<<
    run_fermi_pl \
      ~{in_one_dot_fq} \
      ~{if (input_files_paired) then "-P" else ""} \
      ~{if (input_collatediniterleaved_fastq) then "-c" else ""} \
      ~{if (halve_number_jobs) then "-D" else ""} \
      ~{if (use_original_algorithm) then "-B" else ""} \
      ~{if (skip_error_correction) then "-C" else ""} \
      ~{if defined(fermi_executable) then ("-e " +  '"' + fermi_executable + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(prefix_output_files) then ("-p " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(trim_reads_int) then ("-l " +  '"' + trim_reads_int + '"') else ""} \
      ~{if defined(minimum_overlap) then ("-k " +  '"' + minimum_overlap + '"') else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    input_files_paired: "the input files are paired (ends in separate files)"
    input_collatediniterleaved_fastq: "the input is collated/initerleaved FASTQ (two ends in the same file)"
    halve_number_jobs: "halve the number of jobs for building the split index (effective with -B)"
    use_original_algorithm: "use the original algorithm for constructing FMD-index (default is BCR)"
    skip_error_correction: "skip error correction"
    fermi_executable: "fermi executable [fermi]"
    number_of_threads: "number of threads [2]"
    prefix_output_files: "prefix of output files [fmdef]"
    trim_reads_int: "trim reads to INT bp after error correction [inf]"
    minimum_overlap: "minimum overlap [50]"
    more_options: ""
    options: ""
    in_one_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}