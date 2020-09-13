version 1.0

task RsatDnapattern {
  input {
    Boolean? help
    Boolean? input_sequence_file
    String? mask
    String? format
    File? output_fileif_screen
    Boolean? pattern_entered_directly
    Boolean? pl
    Boolean? subst
    Boolean? no_iupac
    Boolean? sc
    Boolean? no_id
    Boolean? noov
    Boolean? two_str
    Boolean? one_str
    Boolean? search_matches_only_reverse
    Boolean? id
    Int? return
    Boolean? match_format
    Boolean? th
    Boolean? merge
    Boolean? return_matching_sequences
    Boolean? nl
    Boolean? nr
    Boolean? verbose
    Boolean? origin
    Boolean? window
    Boolean? top
    Boolean? sort
    String perl_script_v
    String expressions_dot
    String sequences
    String i_sequencefile_pattern
    String fast_a
    String intelligenetics_format
    String single_sequence_file
    String multi
    String list_files_containing
    String symbol
    String nucleotides_dot
    String input_file_must
    String file_list_line
    String intelligenetics_formatthe_first
  }
  command <<<
    rsat dna_pattern \
      ~{perl_script_v} \
      ~{expressions_dot} \
      ~{sequences} \
      ~{i_sequencefile_pattern} \
      ~{fast_a} \
      ~{intelligenetics_format} \
      ~{single_sequence_file} \
      ~{multi} \
      ~{list_files_containing} \
      ~{symbol} \
      ~{nucleotides_dot} \
      ~{input_file_must} \
      ~{file_list_line} \
      ~{intelligenetics_formatthe_first} \
      ~{if (help) then "-help" else ""} \
      ~{if (input_sequence_file) then "-i" else ""} \
      ~{if defined(mask) then ("-mask " +  '"' + mask + '"') else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{if (output_fileif_screen) then "-o" else ""} \
      ~{if (pattern_entered_directly) then "-p" else ""} \
      ~{if (pl) then "-pl" else ""} \
      ~{if (subst) then "-subst" else ""} \
      ~{if (no_iupac) then "-noIUPAC" else ""} \
      ~{if (sc) then "-sc" else ""} \
      ~{if (no_id) then "-noid" else ""} \
      ~{if (noov) then "-noov" else ""} \
      ~{if (two_str) then "-2str" else ""} \
      ~{if (one_str) then "-1str" else ""} \
      ~{if (search_matches_only_reverse) then "-R" else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if defined(return) then ("-return " +  '"' + return + '"') else ""} \
      ~{if (match_format) then "-match_format" else ""} \
      ~{if (th) then "-th" else ""} \
      ~{if (merge) then "-merge" else ""} \
      ~{if (return_matching_sequences) then "-N" else ""} \
      ~{if (nl) then "-NL" else ""} \
      ~{if (nr) then "-NR" else ""} \
      ~{if (verbose) then "-v" else ""} \
      ~{if (origin) then "-origin" else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if (top) then "-top" else ""} \
      ~{if (sort) then "-sort" else ""}
  >>>
  parameter_meta {
    help: "short help message"
    input_sequence_file: "input sequence file. This file contains the sequences where the pattern(s)\\nwill be searched for.\\nVarious format are accepted\\nIf omitted, standard input (eg keyboard) will be used.\\nThis allows to use the program within a pipe."
    mask: "|lower\\nMask lower or uppercases, respecively, i.e. replace\\nselected case by N characters."
    format: "sequence format. The accepted formats are"
    output_fileif_screen: "output file.\\nIf omitted, standard output (eg screen) will be used.\\nThis allows to use the program within a pipe."
    pattern_entered_directly: "pattern entered directly after -p.\\nAlternatively use -pl."
    pl: "name of the file containing the patterns to search .\\n(see format below)"
    subst: "#\\nallow # substitutions."
    no_iupac: "The pattern is considered as a standard regular expression.\\nIt is convenient to specifically search for masked sequences represented\\nby \\\"N\\\" characters in sequences:\\nie : dna-pattern -i your_sequence_file -p \\\"N+\\\" -noov -1str -noIUPAC"
    sc: "#\\nscore column\\nthe #th column of the pattern file contains a number\\nindicating the score for a match of this pattern. This\\noption allows to weight the matches according to a\\nuser-defined scheme."
    no_id: "do not search pattern identifier in the second column\\nof pattern file. instead the id takes the same content\\nas the pattern sequence."
    noov: "Do not count overlapping matches for self-overlapping\\npatterns."
    two_str: "search matches on both strands (direct and reverse complement)"
    one_str: "search matches only on the direct strand."
    search_matches_only_reverse: "search matches only on the reverse complement strand."
    id: "pattern identifier (one word).\\nUse this option combined with -p, to specify the ID of\\na unique pattern entered on the command line. For\\nmultple patterns, it is more convenient to use a\\npattern file (option -pl)."
    return: "[,field2,...]\\nList of fields to return. Multiple fields can be\\nentered separated by commas, or by using iteratively\\nthe option.\\n-return field1 [-return field2 ...]\\nSupported fields: colsum,counts,ct,limits,notacgt,profiles,rank,rowsum,scores,sites,stats,table,total.\\n-return sites:   return match positions (default)\\n-return limits: return start and end positions for each\\ninput sequence\\n-return notacgt: return positions for characters that\\ndo not correspond not standard nucleotides (ACGT) eg: N, X and\\ndegenerate nucleotides from IUPAC code (eg: W, K)\\n-return counts: return the count of matches per\\nsequence.\\n-return rank: return the rank of the sequence (this is\\nespecially useful in combination with the option\\n-sort).\\n-return score: return a score per sequence, computed\\nby summing the scores of the matching patterns.\\n-return ct:    same as '-return counts', except that it\\nreturns the sum of matches in all the files of the\\nsequence file list, instead of the count within\\neach separate file.\\n-return table: return the count of pattern matches per\\nsequence in the form of a table.  (one line per\\nsequence, one column per pattern)\\n-return colsum (together with -return table) prints an extra\\ncolumn with the total occurrences per sequence\\n-return rowsum (together with -return table) prints an\\nextra row with total occurrences per pattern\\n-return total (together with -return table) prints an\\nextra column with the total occurrences per\\nsequence and an extra row with total occurrences\\nper pattern.  (amounts to combine -colsum and\\n-rowsum)\\n-return stats return matching statistics\\n-return profiles return matching profiles with sliding\\nwindows."
    match_format: "format for returning matches (supported: fasta, table)"
    th: "#   Threshold.\\nReturn match count only for sequences with >= # matches.\\nOnly valid in combination with -c."
    merge: "merge mutually overlapping matches. When succesive\\nmatches overlap, they are converted into a single\\nmatch. The merged match takes the ID \\\"merged\\\". The\\nscore is the highest score of the matching patterns."
    return_matching_sequences: "#    return matching sequences with # flanking nucleotides"
    nl: "#   return matching sequences with # left flanking nucleotides"
    nr: "#   return matching sequences with # right flanking nucleotides"
    verbose: "verbose."
    origin: "#\\ndefine # as the origin for the calculation of positions.\\n-origin -0 defines the end of each sequence as the\\norigin. The matching positions are then negative values,\\nproviding the distance between the match and the end of the\\nsequence."
    window: "#\\nSliding window size. The score at each position is\\ncalculated by summing the scores of all patterns\\nencountered within a sliding window of size #. This\\noption automatically returns matching positions.\\nA threshold can be specified to specify the minimal\\nmatching score to be returned."
    top: "(with sliding window only)\\nonly return the top score obtained with the sliding\\nwindow for each sequence."
    sort: "(with -top only)\\nsort sequences according to their top score"
    perl_script_v: "perl script v1.1 by Jacques van Helden, 30 July 1997."
    expressions_dot: "CATEGORY"
    sequences: "pattern matching"
    i_sequencefile_pattern: "-i sequencefile -format seq_format -p pattern [-id identifier]\\n[-1str|-2str|-R] [-c|-ct] [-noov]\\n[-N flanking] [-v]"
    fast_a: "FastA format"
    intelligenetics_format: "IntelliGenetics format"
    single_sequence_file: "a single sequence in a file"
    multi: "each new line is a new sequence"
    list_files_containing: "a list of files containing each\\na single raw sequence"
    symbol: "Nucleotide(s)   Description"
    nucleotides_dot: "DIRECT PATTERN INPUT"
    input_file_must: "The input file must contain raw sequences without any\\ncomment or other text. Tabs (\\t), blank spaces and newline\\ncharacters (\\n) are accepted (they will be automatically\\nremoved before analysis). The sequence must be terminated by\\na newline character."
    file_list_line: "file list. Each line of the input file contains the\\nname of a file containing a single sequence in raw format."
    intelligenetics_formatthe_first: "IntelliGenetics format.\\nThe first non-comment line must be the sequence identifier\\n(a single word without spaces).\\nThe sequence follows the identifier line identifier. It can\\ninclude spaces, tabs or newlines, that will be removed for\\nsequence analysis.\\nThe end of one sequence is indicated by termination character:\\n1 for linear, 2 for circular sequences.\\nA single file may contain several sequences.\\nEXAMPLE of IG suite:\\n; sequence of the region upstream from NIL1\\n; Locus GAT1\\n; ORF YFL021W  coord:   6 95964 97496\\n; upstream region size: 100\\n; upstream region coord:        6 95864 95963\\nGAT1\\nACAGAGCAACAATAATAACAGCACTATGAGTCGCACACTT\\nGCGGTGCCCGGCCCAGCCACATATATATAGGTGTGTGCCA\\nCTCCCGGCCCCGGTATTAGC\\n1\\n; sequence of the region upstream from PUT4\\n; Locus PUT4\\n; ORF YOR348C  coord:   15 988773 986890\\n; upstream region size: 100\\n; upstream region coord:        15 988873 988774\\nPUT4\\nGGGTTTGTGTTCCTCTTCCTTTCCTTTTTTTTTCTCTCTT\\nCCCTTCCAGTTTCTTTTATTCTTTGCTGTTTCGAAGAATC\\nACACCATCAATGAATAAATC\\n1"
  }
  output {
    File out_stdout = stdout()
    File out_output_fileif_screen = "${in_output_fileif_screen}"
  }
}