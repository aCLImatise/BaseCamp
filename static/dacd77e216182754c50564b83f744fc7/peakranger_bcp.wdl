version 1.0

task PeakrangerBcp {
  input {
    Boolean? arg_data_file
    Boolean? arg_control_file
    String? format
    Boolean? arg_output_location
    Boolean? report
    String? plot_region
    String? gene_an_not_file
    Boolean? arg_p_value
    String? win_size
    Boolean? arg_read_length
    Boolean? verbose
    String var_input
  }
  command <<<
    peakranger bcp \
      ~{var_input} \
      ~{true="-d" false="" arg_data_file} \
      ~{true="-c" false="" arg_control_file} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{true="-o" false="" arg_output_location} \
      ~{true="--report" false="" report} \
      ~{if defined(plot_region) then ("--plot_region " +  '"' + plot_region + '"') else ""} \
      ~{if defined(gene_an_not_file) then ("--gene_annot_file " +  '"' + gene_an_not_file + '"') else ""} \
      ~{true="-p" false="" arg_p_value} \
      ~{if defined(win_size) then ("--win_size " +  '"' + win_size + '"') else ""} \
      ~{true="-l" false="" arg_read_length} \
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
    win_size: "(=500)           sliding window size"
    arg_read_length: "[ --ext_length ] arg (=200)  read extension length"
    verbose: "show progress"
    var_input: ""
  }
}