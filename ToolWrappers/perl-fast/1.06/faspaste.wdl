version 1.0

task Faspaste {
  input {
    Boolean? identifier
    Boolean? description
    String? join
    Boolean? repeat
    Int? recipient
    Boolean? man
    Boolean? log
    Boolean? use_name_default
    Boolean? include_comment_logfile
    Boolean? format
    Boolean? fast_q
  }
  command <<<
    faspaste \
      ~{if (identifier) then "--identifier" else ""} \
      ~{if (description) then "--description" else ""} \
      ~{if defined(join) then ("--join " +  '"' + join + '"') else ""} \
      ~{if (repeat) then "--repeat" else ""} \
      ~{if defined(recipient) then ("--recipient " +  '"' + recipient + '"') else ""} \
      ~{if (man) then "--man" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if (use_name_default) then "-L" else ""} \
      ~{if (include_comment_logfile) then "-C" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (fast_q) then "--fastq" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/perl-fast:1.06--pl526_0"
  }
  parameter_meta {
    identifier: "Concatenate identifiers. The default join-string is the empty\\nstring."
    description: "Concatenate descriptions. The default join-string is a single\\nspace characer."
    join: "Use <string> to concatenate data. Use \\\"\\t\\\" to indicate a\\ntab-character."
    repeat: "Once records are exhausted from any source, repeat the last\\nentry from that source in subsequent operations."
    recipient: "Use input source #<int> as template to receive concatenated\\ndata. One-based indexing is used, with input source 1 as\\ndefault."
    man: "Print the manual page and exit."
    log: "Creates, or appends to, a generic FAST logfile in the current\\nworking directory. The logfile records date/time of execution,\\nfull command with options and arguments, and an optional\\ncomment."
    use_name_default: "[string], --logname=[string]\\nUse [string] as the name of the logfile. Default is\\n\\\"FAST.log.txt\\\"."
    include_comment_logfile: "[string], --comment=[string]\\nInclude comment [string] in logfile. No comment is saved by\\ndefault."
    format: "=[format]\\nUse alternative format for input. See man page for \\\"fasconvert\\\"\\nfor allowed formats. This is for convenience; the FAST tools are\\ndesigned to exchange data in Fasta format, and \\\"fasta\\\" is the\\ndefault format for this tool."
    fast_q: "Use fastq format as input and output.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}