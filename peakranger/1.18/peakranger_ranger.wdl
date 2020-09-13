version 1.0

task PeakrangerRanger {
  input {
    Boolean? arg_data_file
    Boolean? arg_control_file
    File? format
    Boolean? arg_output_location
    Boolean? generate_html_reports
    Int? plot_region
    Boolean? arg_p_value
    Boolean? arg_fdr_cutoff
    Boolean? arg_read_length
    Boolean? arg_sensitivity_summit
    Boolean? arg_smoothing_bandwidth
    Boolean? pad
    Boolean? arg_number_worker
    Boolean? verbose
    String _geneannotfile_arg
  }
  command <<<
    peakranger ranger \
      ~{_geneannotfile_arg} \
      ~{if (arg_data_file) then "-d" else ""} \
      ~{if (arg_control_file) then "-c" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (arg_output_location) then "-o" else ""} \
      ~{if (generate_html_reports) then "--report" else ""} \
      ~{if defined(plot_region) then ("--plot_region " +  '"' + plot_region + '"') else ""} \
      ~{if (arg_p_value) then "-p" else ""} \
      ~{if (arg_fdr_cutoff) then "-q" else ""} \
      ~{if (arg_read_length) then "-l" else ""} \
      ~{if (arg_sensitivity_summit) then "-r" else ""} \
      ~{if (arg_smoothing_bandwidth) then "-b" else ""} \
      ~{if (pad) then "--pad" else ""} \
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
    arg_p_value: "[ --pval ] arg (=0.0001)     p value cut-off"
    arg_fdr_cutoff: "[ --FDR ] arg (=0.01)        FDR cut-off"
    arg_read_length: "[ --ext_length ] arg (=100)  read extension length"
    arg_sensitivity_summit: "[ --delta ] arg (=1)         sensitivity of the summit detector"
    arg_smoothing_bandwidth: "[ --bandwidth ] arg (=99)    smoothing bandwidth"
    pad: "pad read coverage profile to avoid false\\npositive summmits"
    arg_number_worker: "[ --thread ] arg (=7)        number of worker threads"
    verbose: "show progress"
    _geneannotfile_arg: "--gene_annot_file arg           the gene annotation file"
  }
  output {
    File out_stdout = stdout()
  }
}