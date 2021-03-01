version 1.0

task VelvetOptimiserpl {
  input {
    Boolean? verbose_verbose_logging
    Boolean? hashsi_starting_lower
    Boolean? hashei_end_higher
    Boolean? stepi_step_hash
    Boolean? velvethfiless_file_section
    File? amosfile_turn_velvet
    Boolean? velvetgoptionss_velvetg_options
    Boolean? threadsi_maximum_number
    Boolean? genomesizef_approximate_size
    Boolean? optfunckmers_optimisation_function
    Boolean? optfunccovs_optimisation_function
    Boolean? minimum_covcutoff_used
    Boolean? prefixs_prefix_output
    Directory? dirfinals_name_put
    Boolean? uppercovcutofff_maximum_coverage
  }
  command <<<
    VelvetOptimiser_pl \
      ~{if (verbose_verbose_logging) then "--v" else ""} \
      ~{if (hashsi_starting_lower) then "--s" else ""} \
      ~{if (hashei_end_higher) then "--e" else ""} \
      ~{if (stepi_step_hash) then "--x" else ""} \
      ~{if (velvethfiless_file_section) then "--f" else ""} \
      ~{if (amosfile_turn_velvet) then "--a" else ""} \
      ~{if (velvetgoptionss_velvetg_options) then "--o" else ""} \
      ~{if (threadsi_maximum_number) then "--t" else ""} \
      ~{if (genomesizef_approximate_size) then "--g" else ""} \
      ~{if (optfunckmers_optimisation_function) then "--k" else ""} \
      ~{if (optfunccovs_optimisation_function) then "--c" else ""} \
      ~{if (minimum_covcutoff_used) then "--m" else ""} \
      ~{if (prefixs_prefix_output) then "--p" else ""} \
      ~{if (dirfinals_name_put) then "--d" else ""} \
      ~{if (uppercovcutofff_maximum_coverage) then "--z" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose_verbose_logging: "|verbose+    Verbose logging, includes all velvet output in the logfile. (default '0')."
    hashsi_starting_lower: "|hashs=i     The starting (lower) hash value (default '19')."
    hashei_end_higher: "|hashe=i     The end (higher) hash value (default '191')."
    stepi_step_hash: "|step=i      The step in hash search..  min 2, no odd numbers (default '2')."
    velvethfiless_file_section: "|velvethfiles=s The file section of the velveth command line. (default '0')."
    amosfile_turn_velvet: "|amosfile!   Turn on velvet's read tracking and amos file output. (default '0')."
    velvetgoptionss_velvetg_options: "|velvetgoptions=s Extra velvetg options to pass through.  eg. -long_mult_cutoff -max_coverage etc (default '')."
    threadsi_maximum_number: "|threads=i   The maximum number of simulataneous velvet instances to run. (default '8')."
    genomesizef_approximate_size: "|genomesize=f The approximate size of the genome to be assembled in megabases.\\nOnly used in memory use estimation. If not specified, memory use estimation\\nwill not occur. If memory use is estimated, the results are shown and then program exits. (default '0')."
    optfunckmers_optimisation_function: "|optFuncKmer=s The optimisation function used for k-mer choice. (default 'n50')."
    optfunccovs_optimisation_function: "|optFuncCov=s The optimisation function used for cov_cutoff optimisation. (default 'Lbp')."
    minimum_covcutoff_used: "|minCovCutoff=f The minimum cov_cutoff to be used. (default '0')."
    prefixs_prefix_output: "|prefix=s    The prefix for the output filenames, the default is the date and time in the format DD-MM-YYYY-HH-MM_. (default 'auto')."
    dirfinals_name_put: "|dir_final=s The name of the directory to put the final output into. (default '.')."
    uppercovcutofff_maximum_coverage: "|upperCovCutoff=f The maximum coverage cutoff to consider as a multiplier of the expected coverage. (default '0.8')."
  }
  output {
    File out_stdout = stdout()
    File out_amosfile_turn_velvet = "${in_amosfile_turn_velvet}"
    Directory out_dirfinals_name_put = "${in_dirfinals_name_put}"
  }
}