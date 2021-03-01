version 1.0

task Gbfcut {
  input {
    String? perlregexfilter_only_features
    Boolean? case_insensitive
    String? key
    Int? context
    String? join
    Boolean? man
    Boolean? log
    Boolean? use_name_default
    Boolean? include_comment_logfile
    Boolean? format
    Boolean? specify_type_sequence
  }
  command <<<
    gbfcut \
      ~{if defined(perlregexfilter_only_features) then ("-q " +  '"' + perlregexfilter_only_features + '"') else ""} \
      ~{if (case_insensitive) then "--case-insensitive" else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(context) then ("--context " +  '"' + context + '"') else ""} \
      ~{if defined(join) then ("--join " +  '"' + join + '"') else ""} \
      ~{if (man) then "--man" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if (use_name_default) then "-L" else ""} \
      ~{if (include_comment_logfile) then "-C" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (specify_type_sequence) then "-m" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/perl-fast:1.06--pl526_0"
  }
  parameter_meta {
    perlregexfilter_only_features: "[=^]<perl-regex>, --qualifier=<qualifier>[=^]<perl-regex>\\nFilter only features that have a specified qualifier and for\\neach qualifier, at least one value that either matches (=) or no\\nvalue that matches (^) their corresponding perl-regexes.\\nExamples of qualifiers: 'product', 'note', 'gene', 'db_xref'.\\nMultiple qualifier option instances are allowed for the same\\ncommand; features will be printed for which all qualifier\\nexpressions are true."
    case_insensitive: "Enable case-insensitive matching of qualifiers."
    key: "Filter only features with keys that match perl-regex <string>.\\nMatching is done case-insensitively. Examples of key-matching\\nregexes (called \\\"primary-tags\\\" in BioPerl): 'CDS', 'RNA',\\n'CDS|RNA' 'UTR' This regex is always matched case-insensitively."
    context: "Include <int> positions of sequence context for each sequence\\nrecord extracted."
    join: "Use <string> as delimiter to concatenate annotation data in\\noutput sequence record descriptions."
    man: "Print the manual page and exit."
    log: "Creates, or appends to, a generic FAST logfile in the current\\nworking directory. The logfile records date/time of execution,\\nfull command with options and arguments, and an optional\\ncomment."
    use_name_default: "[string], --logname=[string]\\nUse [string] as the name of the logfile. Default is\\n\\\"FAST.log.txt\\\"."
    include_comment_logfile: "[string], --comment=[string]\\nInclude comment [string] in logfile. No comment is saved by\\ndefault."
    format: "=[format]\\nUse alternative format for input. See man page for \\\"fasconvert\\\"\\nfor allowed formats. This is for convenience; the FAST tools are\\ndesigned to exchange data in Fasta format, and \\\"fasta\\\" is the\\ndefault format for this tool."
    specify_type_sequence: "[dna|rna|protein], --moltype=[dna|rna|protein]\\nSpecify the type of sequence on input (should not be needed in\\nmost cases, but sometimes Bioperl cannot guess and complains\\nwhen processing data).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}