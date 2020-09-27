version 1.0

task PeakrangerBcp {
  input {
    Boolean? arg_data_file
    Boolean? arg_control_file
    File? format
    Boolean? arg_output_location
    Boolean? generate_html_reports
    Int? plot_region
    Boolean? arg_p_value
    Int? win_size
    Boolean? arg_read_length
    Boolean? verbose
    String _geneannotfile_arg
  }
  command <<<
    peakranger bcp \
      ~{_geneannotfile_arg} \
      ~{if (arg_data_file) then "-d" else ""} \
      ~{if (arg_control_file) then "-c" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (arg_output_location) then "-o" else ""} \
      ~{if (generate_html_reports) then "--report" else ""} \
      ~{if defined(plot_region) then ("--plot_region " +  '"' + plot_region + '"') else ""} \
      ~{if (arg_p_value) then "-p" else ""} \
      ~{if defined(win_size) then ("--win_size " +  '"' + win_size + '"') else ""} \
      ~{if (arg_read_length) then "-l" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    arg_data_file: "[ --data ] arg               data file"
    arg_control_file: "[ --control ] arg            control file"
    format: "the format of the data file, can be one of :\\nbowtie, sam, bam and bed"
    arg_output_location: "[ --output ] arg             the output location"
    generate_html_reports: "generate html reports"
    plot_region: "(=6000)       the length of the snapshort regions in the"
    arg_p_value: "[ --pval ] arg (=0.0001)     p value cut-off"
    win_size: "(=500)           sliding window size"
    arg_read_length: "[ --ext_length ] arg (=200)  read extension length"
    verbose: "show progress"
    _geneannotfile_arg: "--gene_annot_file arg           the gene annotation file"
  }
  output {
    File out_stdout = stdout()
  }
}