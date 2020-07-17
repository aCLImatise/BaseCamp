version 1.0

task GdtoolsRUNFILE {
  input {
    String? mode
    String? executable
    String? options
    String? run_file
    String? data_dir
    String? downloads_dir
    String? output_dir
    String? log_dir
    Boolean? preserve_pairs
  }
  command <<<
    gdtools RUNFILE \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(executable) then ("--executable " +  '"' + executable + '"') else ""} \
      ~{if defined(options) then ("--options " +  '"' + options + '"') else ""} \
      ~{if defined(run_file) then ("--runfile " +  '"' + run_file + '"') else ""} \
      ~{if defined(data_dir) then ("--data-dir " +  '"' + data_dir + '"') else ""} \
      ~{if defined(downloads_dir) then ("--downloads-dir " +  '"' + downloads_dir + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(log_dir) then ("--log-dir " +  '"' + log_dir + '"') else ""} \
      ~{true="--preserve-pairs" false="" preserve_pairs}
  >>>
  parameter_meta {
    mode: "Type of command file to generate. Valid options are: breseq, breseq-apply, trimmomatic, trimmomatic-PE-unique, read-count. (DEFAULT=breseq)"
    executable: "Alternative executable program to run."
    options: "Options to be passed to the executable. These will appear first in the command line."
    run_file: "Name of the run file to be output. (DEFAULT=commands)"
    data_dir: "Directory to search for genome diff files. (DEFAULT=01_Data)"
    downloads_dir: "Downloads directory where read and reference files are located. Defaults to 02_Trimmed for read files if #=ADAPTSEQ tags are present. (Default = 02_Downloads; 02_Trimmed for read files if #=ADAPTSEQ tags are present for breseq; 02_Apply for reference files for breseq-apply)"
    output_dir: "Output directory for commands within the runfile. (Default = 03_Output for breseq*; = 02_Trimmed for trimmomatic*)"
    log_dir: "Directory for error log file that captures the executable's stdout and sterr. (Default = 04_Logs for breseq; 04_Apply_Logs for breseq-apply; 04_Trim_Logs for trimmomatic*)"
    preserve_pairs: "Keep track of paired and unpaired reads for trimming and using trimmed reads."
  }
}