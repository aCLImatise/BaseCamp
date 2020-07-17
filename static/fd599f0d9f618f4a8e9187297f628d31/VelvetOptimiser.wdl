version 1.0

task VelvetOptimiser.pl {
  input {
    Boolean? verbose_verbose_logging
    Boolean? hashsi_starting_default
    Boolean? hashei_end_higher
    Boolean? stepi_step_hash
    Boolean? velvethfiless_file_section
    Boolean? amosfile_turn_velvet
    Boolean? velvetgoptionss_extra_velvetg
    Boolean? threadsi_maximum_number
    Boolean? genomesizef_approximate_size
    Boolean? optfunckmers_optimisation_function
    Boolean? optfunccovs_optimisation_function
    Boolean? mincovcutofff_minimum_covcutoff
    Boolean? prefixs_prefix_filenames
    Boolean? dirfinals_name_put
    Boolean? uppercovcutofff_maximum_cutoff
  }
  command <<<
    VelvetOptimiser.pl \
      ~{true="--v" false="" verbose_verbose_logging} \
      ~{true="--s" false="" hashsi_starting_default} \
      ~{true="--e" false="" hashei_end_higher} \
      ~{true="--x" false="" stepi_step_hash} \
      ~{true="--f" false="" velvethfiless_file_section} \
      ~{true="--a" false="" amosfile_turn_velvet} \
      ~{true="--o" false="" velvetgoptionss_extra_velvetg} \
      ~{true="--t" false="" threadsi_maximum_number} \
      ~{true="--g" false="" genomesizef_approximate_size} \
      ~{true="--k" false="" optfunckmers_optimisation_function} \
      ~{true="--c" false="" optfunccovs_optimisation_function} \
      ~{true="--m" false="" mincovcutofff_minimum_covcutoff} \
      ~{true="--p" false="" prefixs_prefix_filenames} \
      ~{true="--d" false="" dirfinals_name_put} \
      ~{true="--z" false="" uppercovcutofff_maximum_cutoff}
  >>>
  parameter_meta {
    verbose_verbose_logging: "|verbose+    Verbose logging, includes all velvet output in the logfile. (default '0')."
    hashsi_starting_default: "|hashs=i     The starting (lower) hash value (default '19')."
    hashei_end_higher: "|hashe=i     The end (higher) hash value (default '191')."
    stepi_step_hash: "|step=i      The step in hash search..  min 2, no odd numbers (default '2')."
    velvethfiless_file_section: "|velvethfiles=s The file section of the velveth command line. (default '0')."
    amosfile_turn_velvet: "|amosfile!   Turn on velvet's read tracking and amos file output. (default '0')."
    velvetgoptionss_extra_velvetg: "|velvetgoptions=s Extra velvetg options to pass through.  eg. -long_mult_cutoff -max_coverage etc (default '')."
    threadsi_maximum_number: "|threads=i   The maximum number of simulataneous velvet instances to run. (default '8')."
    genomesizef_approximate_size: "|genomesize=f The approximate size of the genome to be assembled in megabases. Only used in memory use estimation. If not specified, memory use estimation will not occur. If memory use is estimated, the results are shown and then program exits. (default '0')."
    optfunckmers_optimisation_function: "|optFuncKmer=s The optimisation function used for k-mer choice. (default 'n50')."
    optfunccovs_optimisation_function: "|optFuncCov=s The optimisation function used for cov_cutoff optimisation. (default 'Lbp')."
    mincovcutofff_minimum_covcutoff: "|minCovCutoff=f The minimum cov_cutoff to be used. (default '0')."
    prefixs_prefix_filenames: "|prefix=s    The prefix for the output filenames, the default is the date and time in the format DD-MM-YYYY-HH-MM_. (default 'auto')."
    dirfinals_name_put: "|dir_final=s The name of the directory to put the final output into. (default '.')."
    uppercovcutofff_maximum_cutoff: "|upperCovCutoff=f The maximum coverage cutoff to consider as a multiplier of the expected coverage. (default '0.8')."
  }
}