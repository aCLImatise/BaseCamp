version 1.0

task BpGenbankRefExtractor {
  input {
    Boolean? assembly
    File? debug
    Boolean? downstream
    Boolean? email
    Boolean? format
    Boolean? genes
    Boolean? limit
    Boolean? non_on_coding
    Boolean? proteins
    Boolean? no_pseudo
    Boolean? save
    Boolean? save_data
    Boolean? transcripts
    Boolean? upstream
    Boolean? verbose
    Boolean? very_verbose
    String bioperl_lat_bioperl_dot_org
    String support
  }
  command <<<
    bp_genbank_ref_extractor \
      ~{bioperl_lat_bioperl_dot_org} \
      ~{support} \
      ~{if (assembly) then "--assembly" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (downstream) then "--downstream" else ""} \
      ~{if (email) then "--email" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (genes) then "--genes" else ""} \
      ~{if (limit) then "--limit" else ""} \
      ~{if (non_on_coding) then "--nonon-coding" else ""} \
      ~{if (proteins) then "--proteins" else ""} \
      ~{if (no_pseudo) then "--nopseudo" else ""} \
      ~{if (save) then "--save" else ""} \
      ~{if (save_data) then "--save-data" else ""} \
      ~{if (transcripts) then "--transcripts" else ""} \
      ~{if (upstream) then "--upstream" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (very_verbose) then "--very-verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assembly: "When retrieving the sequence, a specific assemly can be defined. The\\nvalue expected is a regex that will be case-insensitive. If it\\nmatches more than one assembly, it will use the first match. It\\ndefauls to \\\"(primary|reference) assembly\\\"."
    debug: "If set, even more output will be printed that may help on debugging.\\nUnlike the messages from --verbose and --very-verbose, these will\\nnot appear on the log file unless this option is selected. This\\noption also sets --very-verbose."
    downstream: "Specifies the number of extra base pairs to be retrieved downstream\\nof the gene. This extra base pairs will only affect the gene\\nsequence, not the transcript or proteins."
    email: "A valid email used to connect to the NCBI servers. This may be used\\nby NCBI to contact users in case of problems and before blocking\\naccess in case of heavy usage."
    format: "Specifies the format that the sequences will be saved. Defaults to\\n*genbank* format. Valid formats are 'genbank' or 'fasta'."
    genes: "Specifies the name for gene file. By default, they are not saved. If\\nno value is given defaults to its UID. Possible values are 'uid',\\n'name', 'symbol' (the official symbol or nomenclature)."
    limit: "When making a query, limit the result to these first specific\\nresults. This is to prevent the use of specially unspecific queries\\nand a warning will be given if a query returns more results than the\\nlimit. The default value is 200. Note that this limit is for *each*\\nsearch."
    non_on_coding: "Some protein coding genes have transcripts that are non-coding. By\\ndefault, these sequences are saved as well. --nonon-coding can be\\nused to ignore those transcripts."
    proteins: "Specifies the name for proteins file. By default, they are not\\nsaved. If no value is given defaults to its accession. Possible\\nvalues are 'accession', 'description', 'gene' (the corresponding\\ngene ID) and 'transcript' (the corresponding transcript accesion).\\nNote that if not using 'accession' is possible for files to be\\noverwritten. It is possible for the same gene to encode more than\\none protein or different proteins to have the same description."
    no_pseudo: "By default, sequences of pseudo genes will be saved. --nopseudo can\\nbe used to ignore those genes."
    save: "Specifies the path for the directory where the sequence and log\\nfiles will be saved. If the directory does not exist it will be\\ncreated altough the path to it must exist. Files on the directory\\nmay be rewritten if necessary. If unspecified, a directory named\\nextracted sequences on the current directory will be used."
    save_data: "This options saves the data (gene UIDs, description, product\\naccessions, etc) to a file. As an optional value, the file format\\ncan be specified. Defaults to CSV.\\nCurrently only CSV is supported.\\nSaving the data structure as a CSV file, requires the installation\\nof the Text::CSV module."
    transcripts: "Specifies the name for transcripts file. By default, they are not\\nsaved. If no value is given defaults to its accession. Possible\\nvalues are 'accession', 'description', 'gene' (the corresponding\\ngene ID) and 'protein' (the protein the transcript encodes).\\nNote that if not using 'accession' is possible for files to be\\noverwritten. It is possible for the same gene to have more than one\\ntranscript or different transcripts to have the same description.\\nAlso, non-coding transcripts will create problems if using\\n'protein'."
    upstream: "Specifies the number of extra base pairs to be extracted upstream of\\nthe gene. This extra base pairs will only affect the gene sequence,\\nnot the transcript or proteins."
    verbose: "If set, program becomes verbose. For an extremely verbose program,\\nuse --very-verbose instead."
    very_verbose: "If set, program becomes extremely verbose. Setting this option,\\nautomatically sets --verbose as well. For help in debugging,\\nconsider using --debug"
    bioperl_lat_bioperl_dot_org: "- General discussion"
    support: "Please direct usage questions or support issues to the mailing list:\\n*bioperl-l@bioperl.org*\\nrather than to the module maintainer directly. Many experienced and\\nreponsive experts will be able look at the problem and quickly address\\nit. Please include a thorough description of the problem with code and\\ndata examples if at all possible."
  }
  output {
    File out_stdout = stdout()
    File out_debug = "${in_debug}"
  }
}