version 1.0

task PeakrangerRanger {
  input {
    Boolean? arg_data_file
    Boolean? arg_control_file
    String? format
    Boolean? arg_output_location
    Boolean? report
    String? plot_region
    String? gene_an_not_file
    Boolean? arg_p_value
    Boolean? arg__fdr
    Boolean? arg_read_length
    Boolean? arg_sensitivity_summit
    Boolean? arg_smoothing_bandwidth
    Boolean? pad
    Boolean? arg_number_worker
    Boolean? verbose
    String var_input
  }
  command <<<
    peakranger ranger \
      ~{var_input} \
      ~{true="-d" false="" arg_data_file} \
      ~{true="-c" false="" arg_control_file} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{true="-o" false="" arg_output_location} \
      ~{true="--report" false="" report} \
      ~{if defined(plot_region) then ("--plot_region " +  '"' + plot_region + '"') else ""} \
      ~{if defined(gene_an_not_file) then ("--gene_annot_file " +  '"' + gene_an_not_file + '"') else ""} \
      ~{true="-p" false="" arg_p_value} \
      ~{true="-q" false="" arg__fdr} \
      ~{true="-l" false="" arg_read_length} \
      ~{true="-r" false="" arg_sensitivity_summit} \
      ~{true="-b" false="" arg_smoothing_bandwidth} \
      ~{true="--pad" false="" pad} \
      ~{true="-t" false="" arg_number_worker} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    arg_data_file: "[ --data ] arg               data file"
    arg_control_file: "[ --control ] arg            control file"
    format: "the format of the data file, can be one of :  bowtie, sam, bam and bed"
    arg_output_location: "[ --output ] arg             the output location"
    report: "generate html reports"
    plot_region: "(=6000)       the length of the snapshort regions in the  report"
    gene_an_not_file: "the gene annotation file"
    arg_p_value: "[ --pval ] arg (=0.0001)     p value cut-off"
    arg__fdr: "[ --FDR ] arg (=0.01)        FDR cut-off"
    arg_read_length: "[ --ext_length ] arg (=100)  read extension length"
    arg_sensitivity_summit: "[ --delta ] arg (=1)         sensitivity of the summit detector"
    arg_smoothing_bandwidth: "[ --bandwidth ] arg (=99)    smoothing bandwidth"
    pad: "pad read coverage profile to avoid false  positive summmits"
    arg_number_worker: "[ --thread ] arg (=7)        number of worker threads"
    verbose: "show progress"
    var_input: ""
  }
}