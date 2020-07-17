version 1.0

task PeakrangerCcat {
  input {
    Boolean? arg_data_file
    Boolean? arg_control_file
    String? format
    Boolean? arg_output_location
    Boolean? report
    String? plot_region
    String? gene_an_not_file
    Boolean? arg__fdr
    String? win_size
    String? win_step
    String? min_count
    String? min_score
    Boolean? arg_read_length
    Boolean? arg_number_worker
    Boolean? verbose
    String var_input
  }
  command <<<
    peakranger ccat \
      ~{var_input} \
      ~{true="-d" false="" arg_data_file} \
      ~{true="-c" false="" arg_control_file} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{true="-o" false="" arg_output_location} \
      ~{true="--report" false="" report} \
      ~{if defined(plot_region) then ("--plot_region " +  '"' + plot_region + '"') else ""} \
      ~{if defined(gene_an_not_file) then ("--gene_annot_file " +  '"' + gene_an_not_file + '"') else ""} \
      ~{true="-q" false="" arg__fdr} \
      ~{if defined(win_size) then ("--win_size " +  '"' + win_size + '"') else ""} \
      ~{if defined(win_step) then ("--win_step " +  '"' + win_step + '"') else ""} \
      ~{if defined(min_count) then ("--min_count " +  '"' + min_count + '"') else ""} \
      ~{if defined(min_score) then ("--min_score " +  '"' + min_score + '"') else ""} \
      ~{true="-l" false="" arg_read_length} \
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
    arg__fdr: "[ --FDR ] arg (=0.11)        FDR cut-off"
    win_size: "(=500)           sliding window size"
    win_step: "(=50)            window moving step"
    min_count: "(=4)            minimum window reads count"
    min_score: "(=5)            minimum window reads fold change"
    arg_read_length: "[ --ext_length ] arg (=200)  read extension length"
    arg_number_worker: "[ --thread ] arg (=7)        number of worker threads"
    verbose: "show progress"
    var_input: ""
  }
}