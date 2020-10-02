class: CommandLineTool
id: fingerPRINTScan.cwl
inputs:
- id: in_calculate_consensus_sequences
  doc: Calculate consensus sequences for the Alignment view (Table 4) [EXPERIMENTAL]
  type: boolean
  inputBinding:
    prefix: -a
- id: in_set_database_format
  doc: Set database format to .profile format (Default)
  type: boolean
  inputBinding:
    prefix: -c
- id: in_output_profile_format
  doc: "Output the .profile format of the database\nThe syntax of this command is\
    \ different to all other commands.\nbeing:  fingerPRINTScan -C prints.dat > prints.pval\n\
    or:     fingerPRINTScan -Cb blocks.dat > blocks.pval"
  type: boolean
  inputBinding:
    prefix: -C
- id: in_percentage_allowed_distance
  doc: "# Percentage allowed distance deviation between motifs.\n(where # is a number\
    \ in the range 0 .. 100)\n(0 is a special case which turns off distance checking)"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_evalue_thresholdwhere_floating
  doc: "# E-value threshold.\n(where # is a floating point number)"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_evalue_calculation_parameterswhere
  doc: "#1 #2  E-value calculation parameters.\n(where #1 is the number of sequences\
    \ in the primary database (default 80000))\n(where #2 is the number of resides\
    \   in the primary database (default 2.96103e+07))\n( the default values are based\
    \ on SWISS-PROT 38)"
  type: boolean
  inputBinding:
    prefix: -E
- id: in_in_fasta_default
  doc: "Explicitly state the format of the provided sequence is in the fasta format\n\
    (Currently default)"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_explicitly_state_the
  doc: "Explicitly state the format of the provided sequence is the PRINTS in house\
    \ format\n(Now defunct)"
  type: boolean
  inputBinding:
    prefix: -F
- id: in_set_options_produce
  doc: Set options to produce output compatable with the GRAPHScan program
  type: boolean
  inputBinding:
    prefix: -G
- id: in_set_scoring_matrix
  doc: "Set the scoring matrix (62 (default), 45 or 80)\n(This only makes any difference\
    \ when creating the .pval database)"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_use_epd_method
  doc: Use E=p.D calculation method
  type: boolean
  inputBinding:
    prefix: -M
- id: in_use_format_slow
  doc: Use the conventional database format (Slow when computing pvals)
  type: boolean
  inputBinding:
    prefix: -n
- id: in_where_decimal_number
  doc: "#\n(where # = a decimal number corresponding to the type of output\nrequired,\
    \ this number corresponds to the number of bits turned on\nin the following matrix)\n\
    TableNo  4 3 2 1\nBitValue 1 2 4 8\nEg.      0 0 1 1 = 4+8 = 12, which will switch\
    \ on\ntables 1 and 2 in the output\nTable 1 = shortest description of the results,\
    \ only the\ntop scoring hits\nTable 2 = medium description of the results, the\
    \ ten\ntop scoring hits detailed by fingerprint\nTable 3 = most detailed description\
    \ of the results,\nthe ten top scoring hits, detailed by\nindividual motif\nTable\
    \ 4 = EXPERIMENTAL alignment of the sequence and the\nconsensus sequence of the\
    \ motif.\n(-a flag needs to be on too)"
  type: boolean
  inputBinding:
    prefix: -o
- id: in_restrict_results_tables
  doc: Restrict all results in all tables to those which score below the Evalue
  type: boolean
  inputBinding:
    prefix: -R
- id: in_specify_profile_threshold
  doc: '# Specify the Profile score threshold (where # is a positive integer (default=
    15))'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_output_gnu_licence
  doc: Output the GNU licence
  type: boolean
  inputBinding:
    prefix: -w
- id: in_specify_pvalue_score
  doc: "# Specify the P-value score threshold\n(where # is a positive integer representing\
    \ the negative power to which 10 is raised)"
  type: boolean
  inputBinding:
    prefix: -x
- id: in_threshold_dot
  doc: -s   select the random ShuffleFlag option (which ShuffleFlags all sequences)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fingerPRINTScan
