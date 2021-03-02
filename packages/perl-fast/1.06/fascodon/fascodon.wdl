version 1.0

task Fascodon {
  input {
    Boolean? rs_cu
    Boolean? use_ncbi_code
    String? codes
    Boolean? use_bases_order
    Boolean? verbose
    Boolean? amino_order
    Boolean? use_string_join
    Boolean? table
    Boolean? man
    Boolean? log
    Boolean? use_name_default
    Boolean? include_comment_logfile
    Boolean? format
    Boolean? specify_type_sequence
    Boolean? fast_q
  }
  command <<<
    fascodon \
      ~{if (rs_cu) then "--rscu" else ""} \
      ~{if (use_ncbi_code) then "-c" else ""} \
      ~{if defined(codes) then ("--codes " +  '"' + codes + '"') else ""} \
      ~{if (use_bases_order) then "-b" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (amino_order) then "--amino-order" else ""} \
      ~{if (use_string_join) then "-j" else ""} \
      ~{if (table) then "--table" else ""} \
      ~{if (man) then "--man" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if (use_name_default) then "-L" else ""} \
      ~{if (include_comment_logfile) then "-C" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (specify_type_sequence) then "-m" else ""} \
      ~{if (fast_q) then "--fastq" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/perl-fast:1.06--pl526_0"
  }
  parameter_meta {
    rs_cu: "Output Relative Synonymous Codon Usage (RSCU) values rather than\\nraw frequencies (default)."
    use_ncbi_code: "[int] --code=[int]\\nUse NCBI genetic code tableID <int> for translating sequences."
    codes: "a list of NCBI genetic code tableIDs and exit."
    use_bases_order: "[string] --base-order=[string]\\nUse bases in [string] order to enumerate codons. Default is\\n\\\"TCAG.\\\""
    verbose: ",\\nIssue warnings to STDERR about sequences with premature stop\\ncodons, that do not end in stop codons, sequences that are not\\ndivisible by 3, etc."
    amino_order: "[string] --amino-order=[string]\\nEnumerate codons by the amino acids they encode. If no option\\nargument is given, codons are enumerated in the default order\\n\\\"ARNDCQEGHILKMFPSTWYV*\\\". If option argument is given, it\\ndetermines which amino acids (codon families) will be analyzed\\nand in what order."
    use_string_join: "[string] --join=[string]\\nUse <string> to join tagged value output in sequence record\\ndescriptions. Use with argument \\\"\\t\\\" to indicate a\\ntab-character."
    table: "Print output in a table to STDOUT."
    man: "Print the manual page and exit."
    log: "Creates, or appends to, a generic FAST logfile in the current\\nworking directory. The logfile records date/time of execution,\\nfull command with options and arguments, and an optional\\ncomment."
    use_name_default: "[string], --logname=[string]\\nUse [string] as the name of the logfile. Default is\\n\\\"FAST.log.txt\\\"."
    include_comment_logfile: "[string], --comment=[string]\\nInclude comment [string] in logfile. No comment is saved by\\ndefault."
    format: "=[format]\\nUse alternative format for input. See man page for \\\"fasconvert\\\"\\nfor allowed formats. This is for convenience; the FAST tools are\\ndesigned to exchange data in Fasta format, and \\\"fasta\\\" is the\\ndefault format for this tool."
    specify_type_sequence: "[dna|rna|protein], --moltype=[dna|rna|protein]\\nSpecify the type of sequence on input (should not be needed in\\nmost cases, but sometimes Bioperl cannot guess and complains\\nwhen processing data)."
    fast_q: "use fastq format as input and output.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}