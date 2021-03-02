version 1.0

task Fastaxsort {
  input {
    Boolean? tax_id_mode
    Boolean? indent_i_fier
    Boolean? field
    Boolean? split_on_regex
    Boolean? annotate
    Boolean? use_append_addresses
    String? index
    Boolean? man
    Boolean? log
    Boolean? use_name_default
    Boolean? include_comment_logfile
    Boolean? format
    Boolean? specify_type_sequence
    Boolean? fast_q
  }
  command <<<
    fastaxsort \
      ~{if (tax_id_mode) then "--tax-id-mode" else ""} \
      ~{if (indent_i_fier) then "--indentifier" else ""} \
      ~{if (field) then "--field" else ""} \
      ~{if (split_on_regex) then "--split-on-regex" else ""} \
      ~{if (annotate) then "--annotate" else ""} \
      ~{if (use_append_addresses) then "-j" else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
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
    tax_id_mode: "NCBI Taxonomic data in sequence records are IDs, not names."
    indent_i_fier: "Taxa are sorted using sequence identifiers (default uses whole\\ndescriptions)"
    field: "Sort sequence records by values at a specific field in sequence\\ndescriptions or identifiers. With this option, the description\\nor identifier is split into fields using strings of white space\\nas field delimiters (the default Perl delimiter for splitting\\nlines of data into fields, which are invalid characters in\\nsequence identfiers).\\nThis option takes a mandatory integer option argument giving the\\nindex for which field to sort by. One-based indexing is used, so\\nthe first field after the sequence identifier has index 1. As\\nstandard in Perl, negative indices count backwards from the last\\nfield; field \\\"-1\\\" is the last field, \\\"-2\\\" is the second-to-last\\netc. Sequence records for which the specified field does not\\nexist will sort on a null key."
    split_on_regex: "Use regex <regex> to split descriptions/identifiers for the -f\\noption instead of the perl default (which splits on one or more\\nwhitespace characters). Special characters must be quoted to\\nprotect them from the shell."
    annotate: "Add FAST taxonomic addresses in dot-hex notation to sequence\\nrecord descriptions"
    use_append_addresses: "[string] --join=[strong]\\nUse [string] to append FAST taxonomic addresses to sequence\\nrecord descriptions, instead of default \\\" \\\". Use \\\"\\t\\\" to\\nindicate a tab-character."
    index: "of printing the sorted sequence records, print a key\\nthat maps fastaxsort taxonomically generated taxonomic addresses\\nin dot-hexadecimal notation to NCBI taxonomic names or IDs."
    man: "Print the manual page and exit."
    log: "Creates, or appends to, a generic FAST logfile in the current\\nworking directory. The logfile records date/time of execution,\\nfull command with options and arguments, and an optional\\ncomment."
    use_name_default: "[string], --logname=[string]\\nUse [string] as the name of the logfile. Default is\\n\\\"FAST.log.txt\\\"."
    include_comment_logfile: "[string], --comment=[string]\\nInclude comment [string] in logfile. No comment is saved by\\ndefault."
    format: "=[format]\\nUse alternative format for input. See man page for \\\"fasconvert\\\"\\nfor allowed formats. This is for convenience; the FAST tools are\\ndesigned to exchange data in Fasta format, and \\\"fasta\\\" is the\\ndefault format for this tool."
    specify_type_sequence: "[dna|rna|protein], --moltype=[dna|rna|protein]\\nSpecify the type of sequence on input (should not be needed in\\nmost cases, but sometimes Bioperl cannot guess and complains\\nwhen processing data)."
    fast_q: "Use fastq format as input and output.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}