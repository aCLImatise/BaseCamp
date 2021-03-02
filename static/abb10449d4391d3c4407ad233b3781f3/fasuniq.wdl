version 1.0

task Fasuniq {
  input {
    Boolean? description
    Boolean? identifier
    Boolean? count
    Boolean? use_string_append
    Boolean? concat
    Boolean? man
    Boolean? log
    Boolean? use_name_default
    Boolean? include_comment_logfile
    Boolean? format
    Boolean? specify_type_sequence
    Boolean? fast_q
    String? multi_fast_a_data_on_stdin
  }
  command <<<
    fasuniq \
      ~{multi_fast_a_data_on_stdin} \
      ~{if (description) then "--description" else ""} \
      ~{if (identifier) then "--identifier" else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if (use_string_append) then "-j" else ""} \
      ~{if (concat) then "--concat" else ""} \
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
    description: "Removes duplicate sequences by matching on descriptions."
    identifier: "Removes duplicate sequences by matching on identifiers."
    count: "Annotate the number of redundant records into descriptions."
    use_string_append: "[string], --join=[string]\\nUse <string> to append count data to sequence record\\ndescriptions. Use with argument \\\"\\t\\\" to indicate a\\ntab-character."
    concat: "=[string]\\nConcatenate identifiers of repeated sequences in output. Use\\ndelimiter [string] to concatenate identifiers. If none given,\\ndefault is \\\":\\\""
    man: "Print the manual page and exit."
    log: "Creates, or appends to, a generic FAST logfile in the current\\nworking directory. The logfile records date/time of execution,\\nfull command with options and arguments, and an optional\\ncomment."
    use_name_default: "[string], --logname=[string]\\nUse [string] as the name of the logfile. Default is\\n\\\"FAST.log.txt\\\"."
    include_comment_logfile: "[string], --comment=[string]\\nInclude comment [string] in logfile. No comment is saved by\\ndefault."
    format: "=[format]\\nUse alternative format for input. See man page for \\\"fasconvert\\\"\\nfor allowed formats. This is for convenience; the FAST tools are\\ndesigned to exchange data in Fasta format, and \\\"fasta\\\" is the\\ndefault format for this tool."
    specify_type_sequence: "[dna|rna|protein], --moltype=[dna|rna|protein]\\nSpecify the type of sequence on input (should not be needed in\\nmost cases, but sometimes Bioperl cannot guess and complains\\nwhen processing data)."
    fast_q: "Use fastq format as input and output.\\n"
    multi_fast_a_data_on_stdin: ""
  }
  output {
    File out_stdout = stdout()
  }
}