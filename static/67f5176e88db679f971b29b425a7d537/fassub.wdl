version 1.0

task Fassub {
  input {
    Boolean? sequence
    Boolean? description
    Boolean? insensitive
    Boolean? global
    Boolean? man
    Boolean? log
    Boolean? use_name_default
    Boolean? include_comment_logfile
    Boolean? format
    Boolean? specify_type_sequence
    Boolean? fast_q
  }
  command <<<
    fassub \
      ~{if (sequence) then "--sequence" else ""} \
      ~{if (description) then "--description" else ""} \
      ~{if (insensitive) then "--insensitive" else ""} \
      ~{if (global) then "--global" else ""} \
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
    sequence: "Substitute on the sequences. By default substitution occurs on\\nidentifiers."
    description: "Substitute on the descriptions. By default substitution occurs\\non identifiers."
    insensitive: "Substitute case-insensitively."
    global: "Substitute all matches in the data. By default only the first\\nmatch on each line will be subsituted."
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