version 1.0

task RsatConvertseq {
  input {
    Boolean? _verbose_level
    File? specified_standard_input
    String? mask
    Boolean? no_empty
    Int? mask_short
    Int? skip_short
    Int? skip_long
    String? last
    String? top
    Int? first
    File? skip
    File? specified_standard_output
    Boolean? from
    Boolean? id_col
    Boolean? seq_col
    Boolean? comment_col
    Boolean? to
    Boolean? lw
    Boolean? add_rc
    Boolean? lc
    Boolean? uc
    Boolean? dna
    Boolean? dot_mask
    String? id
    String? prefix
    Boolean? no_check_id
    String convert_seq
    String util
    String embl
    String filelist
    String ft
    String maf
    String ncbi
    String tab
    String w_consensus
    String fastq
    String ft
    String var_37
    String tab
    String wc
    String input_file_contain
    String multi
    String file_list_line
    String fasta_format
    String intelligenetics_formatthe_first
  }
  command <<<
    rsat convert_seq \
      ~{convert_seq} \
      ~{util} \
      ~{embl} \
      ~{filelist} \
      ~{ft} \
      ~{maf} \
      ~{ncbi} \
      ~{tab} \
      ~{w_consensus} \
      ~{fastq} \
      ~{ft} \
      ~{var_37} \
      ~{tab} \
      ~{wc} \
      ~{input_file_contain} \
      ~{multi} \
      ~{file_list_line} \
      ~{fasta_format} \
      ~{intelligenetics_formatthe_first} \
      ~{if (_verbose_level) then "-v" else ""} \
      ~{if defined(specified_standard_input) then ("-i " +  '"' + specified_standard_input + '"') else ""} \
      ~{if defined(mask) then ("-mask " +  '"' + mask + '"') else ""} \
      ~{if (no_empty) then "-noempty" else ""} \
      ~{if defined(mask_short) then ("-mask_short " +  '"' + mask_short + '"') else ""} \
      ~{if defined(skip_short) then ("-skip_short " +  '"' + skip_short + '"') else ""} \
      ~{if defined(skip_long) then ("-skip_long " +  '"' + skip_long + '"') else ""} \
      ~{if defined(last) then ("-last " +  '"' + last + '"') else ""} \
      ~{if defined(top) then ("-top " +  '"' + top + '"') else ""} \
      ~{if defined(first) then ("-first " +  '"' + first + '"') else ""} \
      ~{if defined(skip) then ("-skip " +  '"' + skip + '"') else ""} \
      ~{if defined(specified_standard_output) then ("-o " +  '"' + specified_standard_output + '"') else ""} \
      ~{if (from) then "-from" else ""} \
      ~{if (id_col) then "-id_col" else ""} \
      ~{if (seq_col) then "-seq_col" else ""} \
      ~{if (comment_col) then "-comment_col" else ""} \
      ~{if (to) then "-to" else ""} \
      ~{if (lw) then "-lw" else ""} \
      ~{if (add_rc) then "-addrc" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (uc) then "-uc" else ""} \
      ~{if (dna) then "-dna" else ""} \
      ~{if (dot_mask) then "-dotmask" else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if (no_check_id) then "-nocheckid" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _verbose_level: "#    verbose level"
    specified_standard_input: "if not specified, the standard input is used.\\nThis allows to place the command within a pipe."
    mask: "|lower|non-dna\\nMask lowercases, uppercases, or non-dna characters, respecively.\\nMasked characters are replaced by by N characters, or\\nby a dot (option -dotmask)."
    no_empty: "Remove empty sequences from the set (same as -skip_short 1)"
    mask_short: "Mask (replace by N characters) sequences shorter than\\nthe specified length. This can be useful to discard\\nshort intergenic segments from the motif discovery\\nstep, especially when working with bacterial genomes,\\nwhere short intergenic sequences generally correspond\\nto intra-operon segments."
    skip_short: "Skip sequences shorter than the specified length. Same\\nfunctionality as -mask_short, except that short\\nsequences are not returned at all in the output."
    skip_long: "Skip sequences longer than the specified length. These\\nsequences are not returned at all in the output."
    last: "Stop after the Nth sequence."
    top: "Same as -last N\\n(maintained for backward compatibility)"
    first: "Start at the Nth sequence (skip the N-1 first\\nsequences)."
    skip: "Skip the N first sequences (start at sequence N+1).\\nOptions -first (or -skip) and -top can be combined to\\nextract a subset from the i^th to the j^th sequence (a\\n\\\"slice\\\" of the sequence file).\\nExample:\\nconvert-seq -skip 100 -last 200\\nequivalent to\\nconvert-seq -first 101 -last 200\\nwill extract the sequences 101 to 200 from the input\\nfile."
    specified_standard_output: "if not specified, the standard output is used.\\nThis allows to place the command within a pipe."
    from: "input format\\nSupported input formats :\\nembl\\nfasta\\nfilelist\\nft\\ngcg\\ngenbank\\nig\\nmaf\\nmulti\\nncbi\\nraw\\ntab\\nwc\\nwconsensus"
    id_col: "column containing sequence identifiers in tab format\\n(default: 1)."
    seq_col: "column containing sequence sequences in tab format\\n(default: 2)."
    comment_col: "column containing sequence comments (sequence\\ndescription) in tab format (default:\\n)."
    to: "output format\\nSupported output formats :\\nfasta\\nfastq\\nfilelist\\nft\\nig\\nmulti\\nraw\\ntab\\nwc\\nwconsensus"
    lw: "#   line width. A carriage return is inserted every #\\ncharacters within the output sequence.\\nDefault is 60. A 0 value indicates that no carriage\\nreturn must be inserted."
    add_rc: "adds the reverse complement of each input sequence\\nto the output file. This is usefull for programs that\\ncannot handle reverse complement (like the Gibbs Sampler)."
    lc: "lowercase. the sequence is printed in lowercase."
    uc: "lowercase. the sequence is printed in uppercase."
    dna: "convert any non-acgt character into \\\"n\\\" characters.\\nThis is to filter out partly specified nucleotides."
    dot_mask: "convert masked characters into dots.\\nThis is useful for programs like consensus, or\\nAlignACE, which do not support N characters in the\\nsequences."
    id: "sequence identifier (useful for converting a raw\\nsequence from the STDIN)"
    prefix: "sequence prefix (useful for converting from a multi\\nsequence)"
    no_check_id: "Prevent to check sequence IDs for conversion to file list"
    convert_seq: "v1.0, 1997 by Jacques van Helden (Jacques.van-Helden@univ-amu.fr)"
    util: "sequences"
    embl: "embl"
    filelist: "filelist"
    ft: "ft"
    maf: "multi"
    ncbi: "raw"
    tab: "tab"
    w_consensus: "OUTPUT "
    fastq: "fastq"
    var_37: "multi"
    wc: "wconsensus"
    input_file_contain: "The input file should contain raw sequences without any\\ncomment or other text. Tabs (\\t), blank spaces and newline\\ncharacters (\\n) are accepted (they will be automatically\\nremoved before analysis). The sequence must be terminated by\\na newline character."
    multi: "same as raw except than each new line is considered to contain\\na new independent sequence in raw format."
    file_list_line: "file list. Each line of the input file contains the\\nname of a file containing a single sequence."
    fasta_format: "FastA format."
    intelligenetics_formatthe_first: "IntelliGenetics format.\\nThe first non-comment line must be the sequence identifier\\n(a single word without spaces).\\nThe sequence follows the identifier line identifier. It can\\ninclude spaces, tabs or newlines, that will be removed for\\nsequence analysis.\\nThe end of one sequence is indicated by termination character:\\n1 for linear, 2 for circular sequences.\\nA single file may contain several sequences.\\nEXAMPLE of IG suite:\\n; sequence of the region upstream from NIL1\\n; Locus GAT1\\n; ORF YFL021W  coord:   6 95964 97496\\n; upstream region size: 100\\n; upstream region coord:        6 95864 95963\\nGAT1\\nACAGAGCAACAATAATAACAGCACTATGAGTCGCACACTT\\nGCGGTGCCCGGCCCAGCCACATATATATAGGTGTGTGCCA\\nCTCCCGGCCCCGGTATTAGC\\n1\\n; sequence of the region upstream from PUT4\\n; Locus PUT4\\n; ORF YOR348C  coord:   15 988773 986890\\n; upstream region size: 100\\n; upstream region coord:        15 988873 988774\\nPUT4\\nGGGTTTGTGTTCCTCTTCCTTTCCTTTTTTTTTCTCTCTT\\nCCCTTCCAGTTTCTTTTATTCTTTGCTGTTTCGAAGAATC\\nACACCATCAATGAATAAATC\\n1"
  }
  output {
    File out_stdout = stdout()
    File out_specified_standard_output = "${in_specified_standard_output}"
  }
}