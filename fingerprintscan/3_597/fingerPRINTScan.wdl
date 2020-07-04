version 1.0

task FingerPRINTScan {
  input {
    Boolean? calculate_consensus_sequences
    Boolean? set_database_format
    Boolean? output_profile_format
    Boolean? percentage_allowed_deviation
    Boolean? evalue_threshold_where
    Boolean? evalue_calculation_parameters
    Boolean? in_fasta_format
    Boolean? explicitly_state_the
    Boolean? set_options_produce
    Boolean? set_scoring_default
    Boolean? use_epd_method
    Boolean? use_database_format
    Boolean? where_decimal_number
    Boolean? restrict_results_tables
    Boolean? select_random_option
    Boolean? specify_profile_threshold
    Boolean? output_gnu_licence
    Boolean? specify_score_threshold
  }
  command <<<
    fingerPRINTScan \
      ~{true="-a" false="" calculate_consensus_sequences} \
      ~{true="-c" false="" set_database_format} \
      ~{true="-C" false="" output_profile_format} \
      ~{true="-d" false="" percentage_allowed_deviation} \
      ~{true="-e" false="" evalue_threshold_where} \
      ~{true="-E" false="" evalue_calculation_parameters} \
      ~{true="-f" false="" in_fasta_format} \
      ~{true="-F" false="" explicitly_state_the} \
      ~{true="-G" false="" set_options_produce} \
      ~{true="-m" false="" set_scoring_default} \
      ~{true="-M" false="" use_epd_method} \
      ~{true="-n" false="" use_database_format} \
      ~{true="-o" false="" where_decimal_number} \
      ~{true="-R" false="" restrict_results_tables} \
      ~{true="-s" false="" select_random_option} \
      ~{true="-t" false="" specify_profile_threshold} \
      ~{true="-w" false="" output_gnu_licence} \
      ~{true="-x" false="" specify_score_threshold}
  >>>
  parameter_meta {
    calculate_consensus_sequences: "Calculate consensus sequences for the Alignment view (Table 4) [EXPERIMENTAL] "
    set_database_format: "Set database format to .profile format (Default)"
    output_profile_format: "Output the .profile format of the database The syntax of this command is different to all other commands. being:  fingerPRINTScan -C prints.dat > prints.pval or:     fingerPRINTScan -Cb blocks.dat > blocks.pval"
    percentage_allowed_deviation: "# Percentage allowed distance deviation between motifs. (where # is a number in the range 0 .. 100) (0 is a special case which turns off distance checking)"
    evalue_threshold_where: "# E-value threshold. (where # is a floating point number)"
    evalue_calculation_parameters: "#1 #2  E-value calculation parameters. (where #1 is the number of sequences in the primary database (default 80000)) (where #2 is the number of resides   in the primary database (default 2.96103e+07)) ( the default values are based on SWISS-PROT 38)"
    in_fasta_format: "Explicitly state the format of the provided sequence is in the fasta format (Currently default)"
    explicitly_state_the: "Explicitly state the format of the provided sequence is the PRINTS in house format (Now defunct)"
    set_options_produce: "Set options to produce output compatable with the GRAPHScan program"
    set_scoring_default: "Set the scoring matrix (62 (default), 45 or 80) (This only makes any difference when creating the .pval database)"
    use_epd_method: "Use E=p.D calculation method "
    use_database_format: "Use the conventional database format (Slow when computing pvals)"
    where_decimal_number: "#  (where # = a decimal number corresponding to the type of output required, this number corresponds to the number of bits turned on in the following matrix) TableNo  4 3 2 1 BitValue 1 2 4 8 Eg.      0 0 1 1 = 4+8 = 12, which will switch on  tables 1 and 2 in the output Table 1 = shortest description of the results, only the top scoring hits Table 2 = medium description of the results, the ten top scoring hits detailed by fingerprint Table 3 = most detailed description of the results, the ten top scoring hits, detailed by individual motif Table 4 = EXPERIMENTAL alignment of the sequence and the  consensus sequence of the motif. (-a flag needs to be on too)"
    restrict_results_tables: "Restrict all results in all tables to those which score below the Evalue threshold."
    select_random_option: "select the random ShuffleFlag option (which ShuffleFlags all sequences)"
    specify_profile_threshold: "# Specify the Profile score threshold (where # is a positive integer (default= 15))"
    output_gnu_licence: "Output the GNU licence"
    specify_score_threshold: "# Specify the P-value score threshold  (where # is a positive integer representing the negative power to which 10 is raised)"
  }
}