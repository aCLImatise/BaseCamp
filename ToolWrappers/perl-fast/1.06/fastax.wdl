version 1.0

task Fastax {
  input {
    Boolean? negate
    Boolean? strict_negate
    Boolean? identifier
    Boolean? sequence_descriptions_identifers
    Boolean? fieldmode_split_perlregex
    Boolean? tax_id_mode
    Boolean? man
    Boolean? log
    Boolean? use_name_default
    Boolean? include_comment_logfile
    Boolean? format
    Boolean? specify_type_sequence
    Boolean? fast_q
    File? multi_fast_a_file
  }
  command <<<
    fastax \
      ~{multi_fast_a_file} \
      ~{if (negate) then "--negate" else ""} \
      ~{if (strict_negate) then "--strict-negate" else ""} \
      ~{if (identifier) then "--identifier" else ""} \
      ~{if (sequence_descriptions_identifers) then "-f" else ""} \
      ~{if (fieldmode_split_perlregex) then "-S" else ""} \
      ~{if (tax_id_mode) then "--tax-id-mode" else ""} \
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
    negate: "return all sequences that are not from the taxon"
    strict_negate: "return all sequences that are not from the taxon, but only if\\nthey are from a recognized taxon"
    identifier: "taxa are searched over sequence identifiers (default is over\\ndescriptions)"
    sequence_descriptions_identifers: "[int], --field=[int]\\nsequence descriptions or identifers are split into fields and\\nfield <int> (1-based) is searched for taxonomic identifiers"
    fieldmode_split_perlregex: "[string], --regex-split=[string]\\nin field-mode (-f) split on perl-regex <regex> instead of the\\ndefault separator, which is strings of white-space. Do \\\"man\\nperlre\\\" and \\\"man perlfunc\\\" for split."
    tax_id_mode: "NCBI Taxonomic data in sequence records are numeric IDs, not\\nnames."
    man: "Print the manual page and exit."
    log: "Creates, or appends to, a generic FAST logfile in the current\\nworking directory. The logfile records date/time of execution,\\nfull command with options and arguments, and an optional\\ncomment."
    use_name_default: "[string], --logname=[string]\\nUse [string] as the name of the logfile. Default is\\n\\\"FAST.log.txt\\\"."
    include_comment_logfile: "[string], --comment=[string]\\nInclude comment [string] in logfile. No comment is saved by\\ndefault."
    format: "=[format]\\nUse alternative format for input. See man page for \\\"fasconvert\\\"\\nfor allowed formats. This is for convenience; the FAST tools are\\ndesigned to exchange data in Fasta format, and \\\"fasta\\\" is the\\ndefault format for this tool."
    specify_type_sequence: "[dna|rna|protein], --moltype=[dna|rna|protein]\\nSpecify the type of sequence on input (should not be needed in\\nmost cases, but sometimes Bioperl cannot guess and complains\\nwhen processing data)."
    fast_q: "Use fastq format as input and output.\\n"
    multi_fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}