class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fingerPRINTScan.cwl
inputs:
- id: calculate_consensus_sequences
  doc: 'Calculate consensus sequences for the Alignment view (Table 4) [EXPERIMENTAL] '
  type: boolean
  inputBinding:
    prefix: -a
- id: set_database_format
  doc: Set database format to .profile format (Default)
  type: boolean
  inputBinding:
    prefix: -c
- id: output_profile_format
  doc: 'Output the .profile format of the database The syntax of this command is different
    to all other commands. being:  fingerPRINTScan -C prints.dat > prints.pval or:     fingerPRINTScan
    -Cb blocks.dat > blocks.pval'
  type: boolean
  inputBinding:
    prefix: -C
- id: percentage_allowed_deviation
  doc: '# Percentage allowed distance deviation between motifs. (where # is a number
    in the range 0 .. 100) (0 is a special case which turns off distance checking)'
  type: boolean
  inputBinding:
    prefix: -d
- id: evalue_threshold_where
  doc: '# E-value threshold. (where # is a floating point number)'
  type: boolean
  inputBinding:
    prefix: -e
- id: evalue_calculation_parameters
  doc: '#1 #2  E-value calculation parameters. (where #1 is the number of sequences
    in the primary database (default 80000)) (where #2 is the number of resides   in
    the primary database (default 2.96103e+07)) ( the default values are based on
    SWISS-PROT 38)'
  type: boolean
  inputBinding:
    prefix: -E
- id: in_fasta_format
  doc: Explicitly state the format of the provided sequence is in the fasta format
    (Currently default)
  type: boolean
  inputBinding:
    prefix: -f
- id: explicitly_state_the
  doc: Explicitly state the format of the provided sequence is the PRINTS in house
    format (Now defunct)
  type: boolean
  inputBinding:
    prefix: -F
- id: set_options_produce
  doc: Set options to produce output compatable with the GRAPHScan program
  type: boolean
  inputBinding:
    prefix: -G
- id: set_scoring_default
  doc: Set the scoring matrix (62 (default), 45 or 80) (This only makes any difference
    when creating the .pval database)
  type: boolean
  inputBinding:
    prefix: -m
- id: use_epd_method
  doc: 'Use E=p.D calculation method '
  type: boolean
  inputBinding:
    prefix: -M
- id: use_database_format
  doc: Use the conventional database format (Slow when computing pvals)
  type: boolean
  inputBinding:
    prefix: -n
- id: where_decimal_number
  doc: '#  (where # = a decimal number corresponding to the type of output required,
    this number corresponds to the number of bits turned on in the following matrix)
    TableNo  4 3 2 1 BitValue 1 2 4 8 Eg.      0 0 1 1 = 4+8 = 12, which will switch
    on  tables 1 and 2 in the output Table 1 = shortest description of the results,
    only the top scoring hits Table 2 = medium description of the results, the ten
    top scoring hits detailed by fingerprint Table 3 = most detailed description of
    the results, the ten top scoring hits, detailed by individual motif Table 4 =
    EXPERIMENTAL alignment of the sequence and the  consensus sequence of the motif.
    (-a flag needs to be on too)'
  type: boolean
  inputBinding:
    prefix: -o
- id: restrict_results_tables
  doc: Restrict all results in all tables to those which score below the Evalue threshold.
  type: boolean
  inputBinding:
    prefix: -R
- id: select_random_option
  doc: select the random ShuffleFlag option (which ShuffleFlags all sequences)
  type: boolean
  inputBinding:
    prefix: -s
- id: specify_profile_threshold
  doc: '# Specify the Profile score threshold (where # is a positive integer (default=
    15))'
  type: boolean
  inputBinding:
    prefix: -t
- id: output_gnu_licence
  doc: Output the GNU licence
  type: boolean
  inputBinding:
    prefix: -w
- id: specify_score_threshold
  doc: '# Specify the P-value score threshold  (where # is a positive integer representing
    the negative power to which 10 is raised)'
  type: boolean
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- fingerPRINTScan
