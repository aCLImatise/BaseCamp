version 1.0

task FingerPRINTScan {
  input {
    Boolean? calculate_consensus_sequences
    Boolean? set_database_format
    Boolean? output_profile_format
    Boolean? percentage_allowed_distance
    Boolean? evalue_thresholdwhere_floating
    Boolean? evalue_calculation_parameterswhere
    Boolean? in_fasta_default
    Boolean? explicitly_state_the
    Boolean? set_options_produce
    Boolean? set_scoring_matrix
    Boolean? use_epd_method
    Boolean? use_format_slow
    Boolean? where_decimal_number
    Boolean? restrict_results_tables
    Boolean? specify_profile_threshold
    Boolean? output_gnu_licence
    Boolean? specify_pvalue_score
    String threshold_dot
  }
  command <<<
    fingerPRINTScan \
      ~{threshold_dot} \
      ~{if (calculate_consensus_sequences) then "-a" else ""} \
      ~{if (set_database_format) then "-c" else ""} \
      ~{if (output_profile_format) then "-C" else ""} \
      ~{if (percentage_allowed_distance) then "-d" else ""} \
      ~{if (evalue_thresholdwhere_floating) then "-e" else ""} \
      ~{if (evalue_calculation_parameterswhere) then "-E" else ""} \
      ~{if (in_fasta_default) then "-f" else ""} \
      ~{if (explicitly_state_the) then "-F" else ""} \
      ~{if (set_options_produce) then "-G" else ""} \
      ~{if (set_scoring_matrix) then "-m" else ""} \
      ~{if (use_epd_method) then "-M" else ""} \
      ~{if (use_format_slow) then "-n" else ""} \
      ~{if (where_decimal_number) then "-o" else ""} \
      ~{if (restrict_results_tables) then "-R" else ""} \
      ~{if (specify_profile_threshold) then "-t" else ""} \
      ~{if (output_gnu_licence) then "-w" else ""} \
      ~{if (specify_pvalue_score) then "-x" else ""}
  >>>
  parameter_meta {
    calculate_consensus_sequences: "Calculate consensus sequences for the Alignment view (Table 4) [EXPERIMENTAL]"
    set_database_format: "Set database format to .profile format (Default)"
    output_profile_format: "Output the .profile format of the database\\nThe syntax of this command is different to all other commands.\\nbeing:  fingerPRINTScan -C prints.dat > prints.pval\\nor:     fingerPRINTScan -Cb blocks.dat > blocks.pval"
    percentage_allowed_distance: "# Percentage allowed distance deviation between motifs.\\n(where # is a number in the range 0 .. 100)\\n(0 is a special case which turns off distance checking)"
    evalue_thresholdwhere_floating: "# E-value threshold.\\n(where # is a floating point number)"
    evalue_calculation_parameterswhere: "#1 #2  E-value calculation parameters.\\n(where #1 is the number of sequences in the primary database (default 80000))\\n(where #2 is the number of resides   in the primary database (default 2.96103e+07))\\n( the default values are based on SWISS-PROT 38)"
    in_fasta_default: "Explicitly state the format of the provided sequence is in the fasta format\\n(Currently default)"
    explicitly_state_the: "Explicitly state the format of the provided sequence is the PRINTS in house format\\n(Now defunct)"
    set_options_produce: "Set options to produce output compatable with the GRAPHScan program"
    set_scoring_matrix: "Set the scoring matrix (62 (default), 45 or 80)\\n(This only makes any difference when creating the .pval database)"
    use_epd_method: "Use E=p.D calculation method"
    use_format_slow: "Use the conventional database format (Slow when computing pvals)"
    where_decimal_number: "#\\n(where # = a decimal number corresponding to the type of output\\nrequired, this number corresponds to the number of bits turned on\\nin the following matrix)\\nTableNo  4 3 2 1\\nBitValue 1 2 4 8\\nEg.      0 0 1 1 = 4+8 = 12, which will switch on\\ntables 1 and 2 in the output\\nTable 1 = shortest description of the results, only the\\ntop scoring hits\\nTable 2 = medium description of the results, the ten\\ntop scoring hits detailed by fingerprint\\nTable 3 = most detailed description of the results,\\nthe ten top scoring hits, detailed by\\nindividual motif\\nTable 4 = EXPERIMENTAL alignment of the sequence and the\\nconsensus sequence of the motif.\\n(-a flag needs to be on too)"
    restrict_results_tables: "Restrict all results in all tables to those which score below the Evalue"
    specify_profile_threshold: "# Specify the Profile score threshold (where # is a positive integer (default= 15))"
    output_gnu_licence: "Output the GNU licence"
    specify_pvalue_score: "# Specify the P-value score threshold\\n(where # is a positive integer representing the negative power to which 10 is raised)"
    threshold_dot: "-s   select the random ShuffleFlag option (which ShuffleFlags all sequences)"
  }
  output {
    File out_stdout = stdout()
  }
}