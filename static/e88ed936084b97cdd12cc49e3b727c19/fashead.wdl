version 1.0

task Fashead {
  input {
    Boolean? number_sequence_print
    Boolean? annotate
    Boolean? join
    Boolean? man
    Boolean? log
    Boolean? use_name_default
    Boolean? include_comment_logfile
    Boolean? format
    Boolean? use_fastq_format
  }
  command <<<
    fashead \
      ~{if (number_sequence_print) then "-n" else ""} \
      ~{if (annotate) then "--annotate" else ""} \
      ~{if (join) then "--join" else ""} \
      ~{if (man) then "--man" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if (use_name_default) then "-L" else ""} \
      ~{if (include_comment_logfile) then "-C" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (use_fastq_format) then "-q" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/perl-fast:1.06--pl526_0"
  }
  parameter_meta {
    number_sequence_print: "[integer], --records=[integer] --number=[integer]\\nThe number of sequence records to print. Must be a positive\\ninteger. Defaults to 10."
    annotate: "Annotate sequence descriptions with file names if and when input\\nis being processed from files."
    join: "=[string]\\nUse [string] to append filenames in descriptions. Use \\\"\\t\\\" to\\nindicate a tab-character."
    man: "Print the manual page and exit."
    log: "Creates, or appends to, a generic FAST logfile in the current\\nworking directory. The logfile records date/time of execution,\\nfull command with options and arguments, and an optional\\ncomment."
    use_name_default: "[string], --logname=[string]\\nUse [string] as the name of the logfile. Default is\\n\\\"FAST.log.txt\\\"."
    include_comment_logfile: "[string], --comment=[string]\\nInclude comment [string] in logfile. No comment is saved by\\ndefault."
    format: "=[format]\\nUse alternative format for input. See man page for \\\"fasconvert\\\"\\nfor allowed formats. This is for convenience; the FAST tools are\\ndesigned to exchange data in Fasta format, and \\\"fasta\\\" is the\\ndefault format for this tool."
    use_fastq_format: "use fastq format as input and output."
  }
  output {
    File out_stdout = stdout()
  }
}