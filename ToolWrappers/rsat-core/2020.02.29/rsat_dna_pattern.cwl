class: CommandLineTool
id: rsat_dna_pattern.cwl
inputs:
- id: in_help
  doc: short help message
  type: boolean?
  inputBinding:
    prefix: -help
- id: in_input_sequence_file
  doc: "input sequence file. This file contains the sequences where the pattern(s)\n\
    will be searched for.\nVarious format are accepted\nIf omitted, standard input\
    \ (eg keyboard) will be used.\nThis allows to use the program within a pipe."
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_mask
  doc: "|lower\nMask lower or uppercases, respecively, i.e. replace\nselected case\
    \ by N characters."
  type: string?
  inputBinding:
    prefix: -mask
- id: in_format
  doc: sequence format. The accepted formats are
  type: string?
  inputBinding:
    prefix: -format
- id: in_output_fileif_omitted
  doc: "output file.\nIf omitted, standard output (eg screen) will be used.\nThis\
    \ allows to use the program within a pipe."
  type: File?
  inputBinding:
    prefix: -o
- id: in_pattern_entered_directly
  doc: "pattern entered directly after -p.\nAlternatively use -pl."
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_pl
  doc: "name of the file containing the patterns to search .\n(see format below)"
  type: boolean?
  inputBinding:
    prefix: -pl
- id: in_subst
  doc: "#\nallow # substitutions."
  type: boolean?
  inputBinding:
    prefix: -subst
- id: in_no_iupac
  doc: "The pattern is considered as a standard regular expression.\nIt is convenient\
    \ to specifically search for masked sequences represented\nby \"N\" characters\
    \ in sequences:\nie : dna-pattern -i your_sequence_file -p \"N+\" -noov -1str\
    \ -noIUPAC"
  type: boolean?
  inputBinding:
    prefix: -noIUPAC
- id: in_sc
  doc: "#\nscore column\nthe #th column of the pattern file contains a number\nindicating\
    \ the score for a match of this pattern. This\noption allows to weight the matches\
    \ according to a\nuser-defined scheme."
  type: boolean?
  inputBinding:
    prefix: -sc
- id: in_no_id
  doc: "do not search pattern identifier in the second column\nof pattern file. instead\
    \ the id takes the same content\nas the pattern sequence."
  type: boolean?
  inputBinding:
    prefix: -noid
- id: in_noov
  doc: "Do not count overlapping matches for self-overlapping\npatterns."
  type: boolean?
  inputBinding:
    prefix: -noov
- id: in_two_str
  doc: search matches on both strands (direct and reverse complement)
  type: boolean?
  inputBinding:
    prefix: -2str
- id: in_one_str
  doc: search matches only on the direct strand.
  type: boolean?
  inputBinding:
    prefix: -1str
- id: in_search_matches_only_reverse
  doc: search matches only on the reverse complement strand.
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_id
  doc: "pattern identifier (one word).\nUse this option combined with -p, to specify\
    \ the ID of\na unique pattern entered on the command line. For\nmultple patterns,\
    \ it is more convenient to use a\npattern file (option -pl)."
  type: boolean?
  inputBinding:
    prefix: -id
- id: in_return
  doc: "[,field2,...]\nList of fields to return. Multiple fields can be\nentered separated\
    \ by commas, or by using iteratively\nthe option.\n-return field1 [-return field2\
    \ ...]\nSupported fields: colsum,counts,ct,limits,notacgt,profiles,rank,rowsum,scores,sites,stats,table,total.\n\
    -return sites:   return match positions (default)\n-return limits: return start\
    \ and end positions for each\ninput sequence\n-return notacgt: return positions\
    \ for characters that\ndo not correspond not standard nucleotides (ACGT) eg: N,\
    \ X and\ndegenerate nucleotides from IUPAC code (eg: W, K)\n-return counts: return\
    \ the count of matches per\nsequence.\n-return rank: return the rank of the sequence\
    \ (this is\nespecially useful in combination with the option\n-sort).\n-return\
    \ score: return a score per sequence, computed\nby summing the scores of the matching\
    \ patterns.\n-return ct:    same as '-return counts', except that it\nreturns\
    \ the sum of matches in all the files of the\nsequence file list, instead of the\
    \ count within\neach separate file.\n-return table: return the count of pattern\
    \ matches per\nsequence in the form of a table.  (one line per\nsequence, one\
    \ column per pattern)\n-return colsum (together with -return table) prints an\
    \ extra\ncolumn with the total occurrences per sequence\n-return rowsum (together\
    \ with -return table) prints an\nextra row with total occurrences per pattern\n\
    -return total (together with -return table) prints an\nextra column with the total\
    \ occurrences per\nsequence and an extra row with total occurrences\nper pattern.\
    \  (amounts to combine -colsum and\n-rowsum)\n-return stats return matching statistics\n\
    -return profiles return matching profiles with sliding\nwindows."
  type: long?
  inputBinding:
    prefix: -return
- id: in_match_format
  doc: 'format for returning matches (supported: fasta, table)'
  type: boolean?
  inputBinding:
    prefix: -match_format
- id: in_th
  doc: "#   Threshold.\nReturn match count only for sequences with >= # matches.\n\
    Only valid in combination with -c."
  type: boolean?
  inputBinding:
    prefix: -th
- id: in_merge
  doc: "merge mutually overlapping matches. When succesive\nmatches overlap, they\
    \ are converted into a single\nmatch. The merged match takes the ID \"merged\"\
    . The\nscore is the highest score of the matching patterns."
  type: boolean?
  inputBinding:
    prefix: -merge
- id: in_return_matching_sequences
  doc: '#    return matching sequences with # flanking nucleotides'
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_nl
  doc: '#   return matching sequences with # left flanking nucleotides'
  type: boolean?
  inputBinding:
    prefix: -NL
- id: in_nr
  doc: '#   return matching sequences with # right flanking nucleotides'
  type: boolean?
  inputBinding:
    prefix: -NR
- id: in_verbose
  doc: verbose.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_origin
  doc: "#\ndefine # as the origin for the calculation of positions.\n-origin -0 defines\
    \ the end of each sequence as the\norigin. The matching positions are then negative\
    \ values,\nproviding the distance between the match and the end of the\nsequence."
  type: boolean?
  inputBinding:
    prefix: -origin
- id: in_window
  doc: "#\nSliding window size. The score at each position is\ncalculated by summing\
    \ the scores of all patterns\nencountered within a sliding window of size #. This\n\
    option automatically returns matching positions.\nA threshold can be specified\
    \ to specify the minimal\nmatching score to be returned."
  type: boolean?
  inputBinding:
    prefix: -window
- id: in_top
  doc: "(with sliding window only)\nonly return the top score obtained with the sliding\n\
    window for each sequence."
  type: boolean?
  inputBinding:
    prefix: -top
- id: in_sort
  doc: "(with -top only)\nsort sequences according to their top score"
  type: boolean?
  inputBinding:
    prefix: -sort
- id: in_perl_script_july
  doc: perl script v1.1 by Jacques van Helden, 30 July 1997.
  type: string
  inputBinding:
    position: 0
- id: in_expressions_dot
  doc: CATEGORY
  type: string
  inputBinding:
    position: 0
- id: in_sequences
  doc: pattern matching
  type: string
  inputBinding:
    position: 1
- id: in_sequencefile_format_seqformat
  doc: "-i sequencefile -format seq_format -p pattern [-id identifier]\n[-1str|-2str|-R]\
    \ [-c|-ct] [-noov]\n[-N flanking] [-v]"
  type: string
  inputBinding:
    position: 0
- id: in_fast_a
  doc: FastA format
  type: string
  inputBinding:
    position: 0
- id: in_intelligenetics_format
  doc: IntelliGenetics format
  type: string
  inputBinding:
    position: 1
- id: in_single_sequence_file
  doc: a single sequence in a file
  type: string
  inputBinding:
    position: 2
- id: in_multi
  doc: each new line is a new sequence
  type: string
  inputBinding:
    position: 3
- id: in_list_files_containing
  doc: "a list of files containing each\na single raw sequence"
  type: string
  inputBinding:
    position: 4
- id: in_symbol
  doc: Nucleotide(s)   Description
  type: string
  inputBinding:
    position: 0
- id: in_nucleotides_dot
  doc: DIRECT PATTERN INPUT
  type: string
  inputBinding:
    position: 0
- id: in_input_file_contain
  doc: "The input file must contain raw sequences without any\ncomment or other text.\
    \ Tabs (\\t), blank spaces and newline\ncharacters (\\n) are accepted (they will\
    \ be automatically\nremoved before analysis). The sequence must be terminated\
    \ by\na newline character."
  type: string
  inputBinding:
    position: 0
- id: in_file_list_line
  doc: "file list. Each line of the input file contains the\nname of a file containing\
    \ a single sequence in raw format."
  type: string
  inputBinding:
    position: 1
- id: in_intelligenetics_formatthe_first
  doc: "IntelliGenetics format.\nThe first non-comment line must be the sequence identifier\n\
    (a single word without spaces).\nThe sequence follows the identifier line identifier.\
    \ It can\ninclude spaces, tabs or newlines, that will be removed for\nsequence\
    \ analysis.\nThe end of one sequence is indicated by termination character:\n\
    1 for linear, 2 for circular sequences.\nA single file may contain several sequences.\n\
    EXAMPLE of IG suite:\n; sequence of the region upstream from NIL1\n; Locus GAT1\n\
    ; ORF YFL021W  coord:   6 95964 97496\n; upstream region size: 100\n; upstream\
    \ region coord:        6 95864 95963\nGAT1\nACAGAGCAACAATAATAACAGCACTATGAGTCGCACACTT\n\
    GCGGTGCCCGGCCCAGCCACATATATATAGGTGTGTGCCA\nCTCCCGGCCCCGGTATTAGC\n1\n; sequence\
    \ of the region upstream from PUT4\n; Locus PUT4\n; ORF YOR348C  coord:   15 988773\
    \ 986890\n; upstream region size: 100\n; upstream region coord:        15 988873\
    \ 988774\nPUT4\nGGGTTTGTGTTCCTCTTCCTTTCCTTTTTTTTTCTCTCTT\nCCCTTCCAGTTTCTTTTATTCTTTGCTGTTTCGAAGAATC\n\
    ACACCATCAATGAATAAATC\n1"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fileif_omitted
  doc: "output file.\nIf omitted, standard output (eg screen) will be used.\nThis\
    \ allows to use the program within a pipe."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fileif_omitted)
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- dna-pattern
