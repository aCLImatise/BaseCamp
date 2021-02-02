version 1.0

task PeakrangerCcat {
  input {
    Boolean? arg_data_file
    Boolean? arg_control_file
    File? format
    Boolean? arg_output_location
    Boolean? generate_html_reports
    Int? plot_region
    Boolean? arg_fdr_cutoff
    Int? win_size
    Int? win_step
    Int? min_count
    Int? min_score
    Boolean? arg_read_length
    Boolean? arg_number_worker
    Boolean? verbose
    String _geneannotfile_arg
  }
  command <<<
    peakranger ccat \
      ~{_geneannotfile_arg} \
      ~{if (arg_data_file) then "-d" else ""} \
      ~{if (arg_control_file) then "-c" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (arg_output_location) then "-o" else ""} \
      ~{if (generate_html_reports) then "--report" else ""} \
      ~{if defined(plot_region) then ("--plot_region " +  '"' + plot_region + '"') else ""} \
      ~{if (arg_fdr_cutoff) then "-q" else ""} \
      ~{if defined(win_size) then ("--win_size " +  '"' + win_size + '"') else ""} \
      ~{if defined(win_step) then ("--win_step " +  '"' + win_step + '"') else ""} \
      ~{if defined(min_count) then ("--min_count " +  '"' + min_count + '"') else ""} \
      ~{if defined(min_score) then ("--min_score " +  '"' + min_score + '"') else ""} \
      ~{if (arg_read_length) then "-l" else ""} \
      ~{if (arg_number_worker) then "-t" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    arg_data_file: "[ --data ] arg               data file"
    arg_control_file: "[ --control ] arg            control file"
    format: "the format of the data file, can be one of :\\nbowtie, sam, bam and bed"
    arg_output_location: "[ --output ] arg             the output location"
    generate_html_reports: "generate html reports"
    plot_region: "(=6000)       the length of the snapshort regions in the"
    arg_fdr_cutoff: "[ --FDR ] arg (=0.11)        FDR cut-off"
    win_size: "(=500)           sliding window size"
    win_step: "(=50)            window moving step"
    min_count: "(=4)            minimum window reads count"
    min_score: "(=5)            minimum window reads fold change"
    arg_read_length: "[ --ext_length ] arg (=200)  read extension length"
    arg_number_worker: "[ --thread ] arg (=7)        number of worker threads"
    verbose: "show progress"
    _geneannotfile_arg: "--gene_annot_file arg           the gene annotation file"
  }
  output {
    File out_stdout = stdout()
  }
}